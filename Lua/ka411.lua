Talk(64, "来来来，最近有没有学会新武功，跟老顽童来玩两招。", "talkname64", 0);
Talk(0, "＜如此好武又天真的人，他该不会就是周伯通？＞前辈是周伯通周前辈吧。", "talkname0", 1);
Talk(64, "是啊，我就是周伯通啊，不过大家都叫我老顽童。", "talkname64", 0);
Talk(0, "前辈，我带你去见一个人。", "talkname0", 1);
Talk(64, "去见谁啊？", "talkname64", 0);
Talk(0, "我说出此人的名字来，你可不许拂袖便走。", "talkname0", 1);
Talk(64, "世间我有两个人不见。一位是段皇爷，一位是他的贵妃瑛姑。除了这二人之外，我老顽童谁都见得。", "talkname64", 0);
Talk(0, "＜看来只有使个激将之计＞原来你曾输在他们手里，武功不及，因此害怕见他们。", "talkname0", 1);
Talk(64, "不是，不是！老顽童行事卑鄙下流，对不起他二人，因此没脸和他们相见。段皇爷甚至连皇帝也不做而去做和尚，可见我实在对不起他之极了。", "talkname64", 0);
Talk(0, "一灯大师之所以出家，是为了对你不起，不是你对他不起，难道你不知道么？", "talkname0", 1);
Talk(64, "他有什么对不起我的？", "talkname64", 0);
Talk(0, "只为旁人害你儿子，他狠心见死不救。", "talkname0", 1);
Talk(64, "什么我的儿子？", "talkname64", 0);
Talk(0, "你和瑛姑生的孩子啊！", "talkname0", 1);
Talk(64, "什么！我有儿子！……", "talkname64", 0);
Talk(0, "周老前辈，瑛姑如此这般思念你，你始终不肯和他相见，于心何忍？", "talkname0", 1);
Talk(64, "她在哪里？", "talkname64", 0);
Talk(0, "他现正居住在黑龙潭，在铁掌山的南边。", "talkname0", 1);
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu|移除编号4。场景20-编号04
jyx2_ReplaceSceneObject("", "NPC/zhoubotong", "");--周伯通去黑龙谭找瑛姑
LightScence();
Talk(0, "咦，老顽童呢？怎么一溜烟的就不见了，希望是去找瑛姑了。", "talkname0", 1);
ModifyEvent(21, 2, 1, 1, 424, -1, -1, 6154, 6154, 6154, -2, -2, -2);--by fanyu|改变贴图，启动424脚本。场景21-编号02
ModifyEvent(21, 1, 1, 1, 423, -1, -1, 6158, 6158, 6158, -2, -2, -2);--by fanyu|改变贴图，启动423脚本。场景21-编号01
jyx2_ReplaceSceneObject("21", "NPC/zhoubotong", "1");--周伯通去黑龙谭找瑛姑
SetScenceMap(21, 1, 22, 26, 0);
AddEthics(3);
do return end;