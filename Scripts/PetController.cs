using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// A controller for the pet.
/// Set the pet's target to the player.
/// When the player is close enough, the pet will follow the player.
/// When the player is far away, the pet will stay in place.
/// </summary>
public class PetController : MonoBehaviour
{
    public GameObject player; // The player that the pet should follow
    public float stopDistance = 2.0f; // The distance at which the pet should stop following the player
    public float lostDistance = 10.0f; // The distance at which the pet should lose the player
    public float rotationSpeed = 5.0f; // The speed at which the pet should turn
    private NavMeshAgent agent; // NavMeshAgent of the pet
    private Animator animator; // Animator of the pet
    
    // The state of run and idle
    private enum State
    {
        Run,
        Idle
    }
    private State state = State.Idle;
    
    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>(); 
    }

    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(player.transform.position, transform.position);

        // When the player is close enough, the pet will stop and play the idle animation
        if (distance < stopDistance)
        {
            agent.ResetPath();
            animator.SetBool("isRunning", false);
            if (state != State.Idle)
            {
                animator.CrossFade ("BeagleIdleLong", 0.5f);
                state = State.Idle;
                print("start idle");
            }
        }
        // When the player is far away, the pet will stop and play the idle animation
        else if (distance > lostDistance)
        {
            agent.ResetPath();
            if (state != State.Idle)
            {
                animator.CrossFade ("BeagleIdleLong", 0.3f);
                state = State.Idle;
                print("start idle");
            }
        }
        // When the player is in a certain range, the pet will start following the player and play the run animation
        else
        {
            agent.SetDestination(player.transform.position);
            if (state != State.Run)
            {
                // animator.SetFloat("Move", 5);
                animator.CrossFade ("BeagleRunCopy", 0.3f);
                state = State.Run;
                print("start run");
            }
        }

        // When the pet is following the player, it will move in a curved path
        if (agent.hasPath)
        {
            Quaternion toRotation = Quaternion.LookRotation(player.transform.position - transform.position);
            transform.rotation = Quaternion.Lerp(transform.rotation, toRotation, rotationSpeed * Time.deltaTime);
            
            float speed = agent.velocity.magnitude;
            // if (speed > 3.2f)
            // {
            //     animator.SetFloat("Move", 4);
            // } 
            // print("Pet speed: " + speed);
        }    
    }
}
