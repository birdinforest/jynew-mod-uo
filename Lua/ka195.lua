if InTeam(35) == false then goto label0 end;
    --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "1");-- 原作不需要显示令狐冲，是否有必要？
    Talk(35, "师父！", "talkname35", 1);
    Talk(19, "谁是你师父了？岳某早跟你脱却了师徒名份。", "talkname19", 0);
    Talk(35, "弟子做错了不少事，愿领师父重责，只是…………只是逐出门墙的责罚，务请师父收回成命。", "talkname35", 1);
    Talk(19, "唉！我何尝不想呢？在此五岳并派紧要之急，你师弟他们的功夫还不到家……下月十五的嵩山大会过后，华山派还能存在吗？重回华山……到时再说吧！", "talkname19", 0);
::label0::
    Talk(0, "近日江湖盛传五岳剑派将在下月十五，于嵩山召开大会讨论并派之事。不知岳先生对此有何看法。", "talkname0", 1);
    Talk(19, "我华山创派二百余年，中间曾有气宗、剑宗之争。在下念及当日两宗自相残杀的惨状，至今兀自不寒而栗……因此在下深觉武林中的宗派门户，分不如合。千百年来江湖上仇杀斗殴，不知有多少武林同道死于非命，推源溯因，泰半是因门户之见而起。在下常想倘若武林之中并无门户宗派之别，天下一家，人人皆如同胞手足。那么种种流血惨剧，十成中至少可以减去九成。英雄豪杰不致盛年丧命，世上也少了许许多多无依无靠的孤儿寡妇。", "talkname19", 0);
    Talk(0, "岳先生人称“君子剑”，果然名不虚传，深具仁者之心。武林中人只要都如岳先生这般想法，天下的腥风血雨，刀兵纷争，便都泯于无形了。", "talkname0", 1);
    Talk(19, "其实这一些浅见，其他的武林前辈一定也都想过。他们都知道门户派别的分歧大有祸害，为什么不能痛下决心，予以消除？在下大惑不解，于此事苦思多年，直到前几日才恍然大悟，明白了其中的关窍所在。", "talkname19", 0);
    Talk(0, "岳先生的见地，定然是很高明的。", "talkname0", 1);
    Talk(19, "在下潜心思索，发觉其中道理，原来在一个“急”字与“渐”字的差别。", "talkname19", 0);
    Talk(19, "历来武林中的有心人，盼望消除门户派别，往往操之过急，要一举而将天下所有宗派门户之间的界限，尽数消除。殊不知积重难返，武林中的宗派，大者数十小者过千，每个门户都有数十年乃至千百年的传承，要一举而消除之，确是难于登天。", "talkname19", 0);
    Talk(0, "不知那嵩山派左掌门为何如此急着要合并五岳剑派。", "talkname0", 1);
    Talk(19, "左冷禅野心极大，他想要做武林中的第一人。当初当上五岳剑派盟主，那只是第一步。第二步是要将五派归一，由他自任掌门五派归一之后，实力雄厚，便可隐然与少林、武当成为鼎足而三之势。到时他会进一步蚕食昆仑、峨嵋、崆峒、青城诸派，一一将之合并。然后他向魔教挑战，率领少林，武当诸派，一举将魔教挑了，这是第四步。", "talkname19", 0);
    Talk(0, "这种事情难办至极，左冷禅的武功未必当世无敌，他何以要花偌大心力？", "talkname0", 1);
    Talk(19, "人心难测。世上之事，不论多么难办，总是有人要去试上一试。左冷禅若能灭了魔教，在武林中已是唯我独尊之势，再要吞并武当，收拾少林，也未始不能。干办这些大事，那也不是全凭武功。", "talkname19", 0);
    Talk(0, "原来左冷禅是要天下武林之士，个个遵他号令。", "talkname0", 1);
    Talk(19, "那时只怕他想做皇帝了，做了皇帝之后，又想长生不老，万寿无疆！这叫“人心不足蛇吞象”，自古以来，皆是如此。英雄豪杰之士，绝少有人能逃得过这“权位”的关口。", "talkname19", 0);
    Talk(0,"人生数十年，但贵适意，却又何苦如此？左冷禅要消灭崆峒、昆仑，吞并少林、武当，不知将杀多少人，流多少血？岳先生，我们必须阻止左冷禅，不让他野心得逞，以免江湖之上，遍地血腥。", "talkname0", 1);
    Talk(19, "下月十五的嵩山大会上，岳某将尽力而为。", "talkname19", 0);
    Talk(0, "到时我一定去帮你。", "talkname0", 1);

    if InTeam(35) == false then goto label1 end;
        Talk(35, "是啊，师父，到时我们一定会去帮你。", "talkname35", 1);
        Talk(19, "只盼你能立了大功，我才有理由让你重回华山门下。", "talkname19", 0);
        Talk(35, "兄弟，下月十五，我们一定要到嵩山去阻止左冷禅的阴谋！", "talkname35", 1);
        --jyx2_ReplaceSceneObject("", "NPC/令狐冲", "");-- 
::label1::
        ModifyEvent(-2, -2, -2, -2, 196, -1, -1, -2, -2, -2, -2, -2, -2);
        Add3EventNum(27, 0, 0, 0, 1);--需要拜访嵩山以外4派才会触发五岳并派事件。嵩山入口0号trigger对应起始事件为198，每拜访1派事件序号+1，202号事件为并派事件。
do return end;
