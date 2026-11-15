BEGIN C0X1NPC1
BEGIN C0X1NPC2

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
InParty("KELDORN")
See("KELDORN")
Global("C0X1MariaQuest","GLOBAL",0)~ THEN MARIA maria
~我亲爱的夫君……你终于回来了。从你疲惫的神情，我看得出这趟征程委实艰辛。~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",1)~
== KELDORJ IF ~Global("C0X1KeldornWasInHell","GLOBAL",1)~ ~是啊，闯了趟地狱又回来，比我想象的还要凶险得多……~
== KELDORJ IF ~!Global("C0X1KeldornWasInHell","GLOBAL",1)~ ~是啊，这桩任务确实胜过我以往经历过的任何一桩……~
== KELDORJ ~但终于结束了，我也终于能兑现对你的承诺，亲爱的。我回家了。~
== MARIA ~那么……这一次，你是留下来了吗？~
== KELDORJ ~我……~
END
  ++ ~说吧，凯尔德隆。你已兑现承诺，该好好歇歇了。~ EXTERN KELDORJ maria.1
  ++ ~这由你决定，我的朋友。我希望你留下，但我不能勉强你。~ EXTERN KELDORJ maria.1
  ++ ~艾瑞尼卡斯虽死，我的命运却尚未了结。我仍需要你。~ EXTERN KELDORJ maria.1


CHAIN KELDORJ maria.1
~玛丽亚，我——~
== MARIA ~不，不必解释了，亲爱的。我想我明白。~
== MARIA ~发生的一切，我都反复想过……自从我们之间的真相摊开，我才意识到我们的错误有多深重……思来想去，我明白了：以你如今的心境，即便压下心底最深的疑虑留在我身边，等到你的职责未能真正完成，你也注定会悔恨。~
== MARIA ~而且……我看得出来，你与你的领队<CHARNAME>结下了真挚的情谊，远胜过我见过的你以往任何一位战友……偏偏在这个时候离弃<PRO_HIMHER>，你绝不会安心。~
== KELDORJ ~我……我无法否认。一路同行下来，我对<PRO_HIMHER>生出了一份责任，对方是可信赖的朋友，也是需要帮助的人。但若这终究要与我对你的情意相冲突，亲爱的，那我就必须——~
== MARIA ~跟着<PRO_HIMHER>走吧，凯尔德隆。~
== KELDORJ ~什么？~
== MARIA ~我真心盼着你能留下，真的……但我知道，即便卸下职责，你也永远无法真正从中解脱。就在这里，我也听说了南方危局渐起、山雨欲来的传闻……若能看到事情落幕，给你带来真正长久的安宁，那我求你，去吧。这就是你，而我所爱的男人，本就不会是另一个样子。~
== KELDORJ ~玛丽亚，我……谢谢你，亲爱的……~
== MARIA ~但答应我……答应我你会回来。活着回到我身边，这就是我唯一的请求。~
== KELDORJ ~我答应你。~
== MARIA ~那我就为你此行的顺遂、为你平安归来祈祷……~
== MARIA ~啊，不过在你走之前，亲爱的，有件要紧事你没忘吧？薇丝珀的生日快到了。~
== KELDORJ ~我没忘……很遗憾，我恐怕没法陪她、陪你们大家一起庆祝……但我仍想为她做点什么。~
== MARIA ~趁你还在……送她一份礼物。这份心意本身就会让她高兴，即便她会想念你在身边。~
== KELDORJ ~当然。离开城之前，我会立刻去办，虽说这实在算不得什么像样的补偿。~
== MARIA ~我想你已经知道该送她什么了吧？~
== KELDORJ ~是的，我知道。<CHARNAME>，若不嫌冒昧……我们一同去女神步道，好吗？~
END
  ++ ~当然。反正我们现在时间多得是。~ EXTERN KELDORJ maria.2
  ++ ~行，只要快点办完。~ EXTERN KELDORJ maria.2
  ++ ~这事没我也行吧。我们先分头走。~ EXTERN KELDORJ maria.3
  ++ ~我没兴趣掺和你的家务事。你自己去吧。~ EXTERN KELDORJ maria.3

CHAIN KELDORJ maria.2
~谢谢你，我的朋友……那就去恩格店里吧。我要找的东西，若阿斯卡特拉城内有，多半就在那里。~
EXIT

CHAIN KELDORJ maria.3
~那就这样……给我一天时间，<CHARNAME>，等我把私事料理妥当，再来这里与你会合。暂时别过。~
DO ~SetGlobalTimer("C0X1MariaQuestSkip","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
SetGlobal("C0X1MariaQuest","GLOBAL",12)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",2)~ THEN KELDORJ maria2
~到了。<CHARNAME>，可否请你陪我看看这些货品……~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
Wait(1)
ActionOverride(Player1,MoveToPoint([669.286]))
ActionOverride(Player1,Face(NE))
MoveToPoint([636.275])
Face(NE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",3)~ THEN KELDORJ maria3
~我已有许久没有余暇顾及这类家常事了。既要侍奉教团，又要追随你，我早已忘了做个普通人是什么滋味。~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",4)~
END
  ++ ~抱歉一直让你陪着我。你本就该和家人待在一起。~ + maria3.1
  ++ ~你仍然可以选择。艾瑞尼卡斯既已落败，你的服役按理也该结束了。~ + maria3.1
  ++ ~我们究竟在找什么？~ + maria3.2

CHAIN KELDORJ maria3.1
~不，<CHARNAME>，不必为我的选择心怀愧疚。一路同行所见所闻之后……我愈发确信，我的选择虽艰难，却或许是正确的。~
== KELDORJ ~很少有人能体会你所经历的磨难，能扛起这份重担的人就更少了。像你这样的人，值得我伸出援手……说到底，这也正是我选择如今这条路的原因。~
== KELDORJ ~我已踏上了通往你所注定命运的旅程，这样一条路，轻易脱不得身。我心中或许向往安宁，但在亲眼确认你的安宁有保障之前，我怕自己难以安歇。~
== KELDORJ ~好了，先不说这些。我们来办女儿生日礼物这桩事吧。~
EXTERN KELDORJ maria3.2

CHAIN KELDORJ maria3.2
~我要找的礼物……是马拉特拉的一种异域果实，呈紫色，比常人拳头略小。有次为教团执行任务，我和同僚帮过一位马拉特拉商人，他便送了我一捆作为谢礼。~
== KELDORJ ~教团中人按例不接受酬谢，可那人执意要给，推辞反倒像是羞辱……那时我还年轻些，职责也没那么严苛，能回家的机会也更多。~
== KELDORJ ~那份没分给同袍的果实，我带回了家，薇丝珀格外喜欢，头一回缠着我讲差事的经过，想听我是怎么得到那些果子的。~
== KELDORJ ~从那以后，我每年都来城里市集碰碰运气。有些年份买得到，有些年份没有……可哪怕希望再渺茫，我也会来，好重拾那一刻些许的欢喜。不过今年看来是没有了……~
== KELDORJ ~打扰了，先生。请问贵店可有“果中王后”的存货？~
== SHOP04 ~“果中王后”？回老爷，这一季咱可没有。供货商都说今年进货太贵，您明白的。城中店里，唉，是寻不着了。兴许在贸易镇还能寻着一些，是呢。~
== KELDORJ ~贸易镇……原来如此。谢谢你，先生。我想问的就这些。~
== KELDORJ ~请原谅，<CHARNAME>……看来这趟小差使要比预想的更久。我打算去贸易镇，看看能不能在那里寻到要找的东西。若你同意，我可以独自前往，一天之内回宅邸与你会合。~
END
  ++ ~不，我们一起去。反正我现在也没别的事做。~ + maria3.3
  ++ ~好吧。那我明天去你府上找你。~ + maria.2

CHAIN KELDORJ maria3.3
~那就这样。动身去贸易镇。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",5)~ THEN KELDORJ maria4
~愿神明今日赐福于你，好心的女士。请问你这儿可有“果中王后”出售？~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",6)~
== C0X1NPC1 ~“果中王后”？哎呀，老爷您运气好，我这批时令货刚到不久。存货充足，鲜活得像是刚从树上摘下来的！您想买多少？~
== KELDORJ ~嗯。把你最大的口袋拿来，女士，能装多少就装多少。~
== C0X1NPC1 ~这就办，老爷。这些想必够您全家吃上一个星期，说不准更久。您稍等我片刻，把袋子装满称好，再告诉您价钱……~
== KELDORJ ~再一次感谢你，<CHARNAME>，愿意陪我办这桩琐事。~
END
  ++ ~你为我做了那么多。这还算不得报答你的人情。~ + maria4.1
  ++ ~这果子值得这么跑一趟吧。说不定我也来几颗尝尝。~ + maria4.2
  ++ ~这事越快了结越好。~ + maria4.3

CHAIN KELDORJ maria4.1
~哈！说得是，这点我没法否认。但愿所有这类人情都能如此轻易偿还……~
EXTERN KELDORJ maria4.3

CHAIN KELDORJ maria4.2
~对我这口味来说是甜了些，不过上了年纪，说不定慢慢也会品出味道来。趁还有机会，我也该请你尝几颗……~
EXTERN KELDORJ maria4.3

CHAIN KELDORJ maria4.3
~用不了多久了。付过钱，我们就能回去找女儿，我这个做父亲的总算也尽了一分心意。接下来……~
== KELDORJ ~等等。你看见没有，<CHARNAME>？~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreature("C0X1NPC2",[2620.2632],NW)
CreateCreature("C0X1NPC3",[2633.2647],NW)
Wait(1)
Face(NE)
SmallWait(5)
ActionOverride(Player1,Face(NE))
SmallWait(5)
MoveViewPoint([2623.2655],STANDARD)
Wait(5)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",6)~ THEN KELDORJ maria5
~*叹息* 看来无论什么年月，这类小恶行总会撞上我们眼皮子。恶人不得安宁，阻止恶人的人也不得安宁……~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",7)~
== KELDORJ ~在这儿稍等片刻，<CHARNAME>。我很快就能把这事了结。~
DO ~ClearAllActions()
StartCutSceneMode()
MoveViewPoint([2623.2655],STANDARD)
MoveToPoint([2589.2683])
Wait(1)
FaceObject("C0X1NPC3")
Wait(1)
ActionOverride("C0X1NPC2",FaceObject("KELDORN"))
ActionOverride("C0X1NPC3",FaceObject("KELDORN"))
Wait(2)
ActionOverride("C0X1NPC3",EscapeArea())
FadeToColor([30.0],0)
MoveToPoint([2914.2473])
Wait(1)
ActionOverride("C0X1NPC3",DestroySelf())
JumpToPoint([2667.2647])
ActionOverride("C0X1NPC2",FaceObject("KELDORN"))
FaceObject("C0X1NPC2")
FadeFromColor([30.0],0)
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",7)~ THEN KELDORJ maria6
~您的钱袋，先生。但愿里面的东西与您预期的相符。~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",8)~
== C0X1NPC2 ~谢——谢谢您，好心的骑士！多亏您及时出现，我这积蓄才保住！请允许我报答您——~
== KELDORJ ~不必了，先生。这是我的职责，你的谢意我心领，但这样的事我不能索取酬劳。换作任何正直的人处在我的位置，都会这么做。~
DO ~ClearAllActions()
StartCutSceneMode()
FaceObject("C0X1NPC2")
FadeToColor([30.0],0)
Wait(2)
ActionOverride("C0X1NPC2",DestroySelf())
JumpToPoint([2313.2822])
FadeFromColor([30.0],0)
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",8)~ THEN KELDORJ maria7
~抱歉耽搁了，<CHARNAME>。方才不得不出面制止，委实遗憾。~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",9)~
END
  ++ ~那窃贼怎么处置了？~ + maria7.5
  ++ ~你做了件好事，没什么好遗憾的。~ + maria7.1
  ++ ~换作旁人，这般小事多半根本懒得管。~ + maria7.2
  ++ ~无所谓了。果子我拿到了，走吧。~ + maria7.4

CHAIN KELDORJ maria7.1
~你误会了，<CHARNAME>。我感慨的是，无论我们行下多少善事，恶行似乎仍会大大小小地滋生不息。世道便是如此。~
EXTERN KELDORJ maria7.3

CHAIN KELDORJ maria7.2
~在我们这般身份的人看来或许是小事，可对受所害的人而言，无论起因多简单，影响都可能是我们无法想象的。~
EXTERN KELDORJ maria7.3

CHAIN KELDORJ maria7.3
~我似乎身不由己，<CHARNAME>。只要有需要我出手的召唤，无论职责大小，我都必定挺身而出。~
== KELDORJ ~我的荣誉告诉我，这是为了更大的善。我心里明白，那是一种愧疚：我贪求自身的安宁，而明知他人仍在受苦，却无人准备好回应他们的哭喊。~
== KELDORJ ~再说一次……请不要为把我留在你身边而心怀负担，我的朋友。无论是否需要我，我的举动都是我自己的选择，与旁人无关。~
EXTERN KELDORJ maria7.4

CHAIN KELDORJ maria7.4
~好了，我的差事既已办完，我们回家吧。~
EXIT

CHAIN KELDORJ maria7.5
~他还只是个孩子。我从他眼神看得出，他只是欠缺见识，不明白自己真正造成了多大伤害。一次严厉的告诫，加上别再重蹈覆辙的恰当鞭策，就已经足够。~
EXTERN KELDORJ maria7.3

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
InParty("KELDORN")
See("KELDORN")
Global("C0X1MariaQuest","GLOBAL",9)~ THEN MARIA maria8
~亲爱的，我看你回来了，而且大获成功。~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",10)~
== KELDORJ ~是啊。这一回的任务出奇地简单……我很少能这样坦诚地说这句话。~
== MARIA ~薇丝珀在等你呢。你该把带的东西给她看看……啊，不过先别忘了拿只碗来。~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0X1Begin","GLOBAL",0)
IsGabber("KELDORN")
Global("C0X1MariaQuest","GLOBAL",10)~ THEN VESPER vesper
~父亲！你终于回来了！~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",11)~
== KELDORJ ~嗯，好孩子。我回来了……还把你最爱的礼物带来了。~
== VESPER ~那些……就是“果中王后”吗？噢，父亲！距你上次把它们带回家，都已经三年了！~
== KELDORJ ~真有这么久了吗？是啊，想来也是……你还记得我头一回给你讲的那些故事吗？~
== VESPER ~记得。可你现在肯定有更多故事可讲了……你能不能再多留一会儿，讲给我听？~
== KELDORJ ~……~
== LEONA ~父亲……~
== KELDORJ ~我可怜的孩子，真对不起……你父亲又一次失信于你了。~
== VESPER ~我……~
== VESPER ~我明白，父亲。你……你得先去看到这件事的结尾。我知道这对你很重要……那对我们也一样重要。我能等……我会做个乖孩子，就像你教我的那样。我保证。~
== KELDORJ ~谢谢你……你真是个好孩子，薇丝珀。能有你们两个女儿，我真是有福。~
== VESPER ~只是……请一定回来，父亲。你不在我们身边，我能接受……但千万别死。求你，答应我们，你不要死。~
== KELDORJ ~……当然，我答应你。有你们在等我，我不能倒下。再见，我亲爱的女儿。还有，虽说还早……祝你生日快乐。~
== VESPER ~谢谢你，父亲。再见……我们都等你回来……~
DO ~AddXPObject("Keldorn",15000)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1MariaQuest","GLOBAL",13)~ THEN KELDORP keldorn.end
~我如约回来了，<CHARNAME>。辞别已毕，你的旅程在前方等候。我想你仍需要我的协助？~
DO ~SetGlobal("C0X1MariaQuest","GLOBAL",14)~
END
  ++ ~那走吧。~ DO ~JoinParty()~ EXIT
  ++ ~其实……踏上我道路的下一段之前，还有时间。到时候我会来找你，凯尔德隆。在那之前，好好陪你的家人。~ + keldorn.end.1

CHAIN KELDORP keldorn.end.1
~好，如你所愿……这段时光无论长短，我都会好好珍惜。到时候见，<CHARNAME>。需要我时尽管开口。~
EXIT