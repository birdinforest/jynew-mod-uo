Talk(86, "大侠别杀我，我是“青城四秀”中的侯人雄……", "talkname86", 0);
Talk(0, "你这头狗熊，想干什么，凭什么要我不杀你。", "talkname0", 1);
Talk(86, "我知道个秘密。", "talkname86", 0);
Talk(0, "你说。", "talkname0", 1);
Talk(86, "林震南死前曾要我转告他儿子……“福州向阳巷老宅地窖中的物事，是林家祖传之物，须得好好保管……但他曾祖远图公留有遗训，林家子孙，不得翻看，否则后患无穷。”这事我连师父也没说，说出来给少侠参考。", "talkname86", 0);
Talk(0, "好，不错，这讯息似乎有点用处，我就放过你。", "talkname0", 1);
Talk(86, "谢谢少侠，少侠这么好心，将来一定娶个美娇娘。", "talkname86", 0);
Talk(0, "这话听来还蛮舒服的。你本质还不坏，别跟着这坏人了，快回家种田去吧。", "talkname0", 1);
Talk(86, "是，是……", "talkname86", 0);
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/青城弟子3", "");-- 移除人物
ModifyEvent(56, 1, -2, -2, 289, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
do return end;