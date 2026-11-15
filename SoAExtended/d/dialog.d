BEGIN C0X1KID1
BEGIN C0X1KID2
BEGIN C0X1KID3
BEGIN C0X1DEMI
BEGIN C0X1ELHA

EXTEND_BOTTOM SUELLE2 18
IF ~True()~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS01")~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",0)~ THEN C0X1KID1 a1
~看……<PRO_HESHE>倒下了。~
DO ~SetGlobal("C0X1Begin","GLOBAL",1)~
== C0X1KID2 ~<PRO_HESHE>做的梦一定很可怕。我想<PRO_HESHE>刚才还在嘟囔……~
== C0X1KID3 ~别靠太近！维拉斯说<PRO_HESHE>会变成怪物。~
== C0X1KID2 ~我看<PRO_HESHE>不太像怪物。~
== C0X1KID1 ~可是<PRO_HESHE>阻止了放逐者，救了我们的女王！那<PRO_HESHE>至少是位了不起的战士，或是强大的法师。真希望有一天我能像<PRO_HIMHER>一样强，像<PRO_HESHE>那样守护我们的城市。~
== C0X1KID3 ~哪能呢。你哥用棍子敲你一下，你还哭鼻子呢。~
== C0X1KID1 ~你竟敢——~
== C0X1KID2 ~嘘！<PRO_HESHE>像是要醒了。~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,FaceObject("C0X1KID2"))
Wait(1)
ActionOverride(Player1,SetSequence(SEQ_AWAKE))
Wait(2)
ActionOverride("C0X1KID2",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",1)~ THEN C0X1KID2 a2
~日安，救星。~
DO ~SetGlobal("C0X1Begin","GLOBAL",2)~
END
  ++ ~也日安，孩子。~ + a2.1
  ++ ~我怎么躺在地上……？~ + a2.1
  ++ ~啊！孩子们！离我远点，我受不了这些小魔头！~ EXTERN C0X1KID3 a2.2

CHAIN C0X1KID2 a2.1
~你睡着时抖得很厉害。我们正打算去叫女祭司，可你倒下之后，我们觉得还是先确认你没事为好。~
== C0X1KID1 ~我们正要鼓起勇气凑过去戳戳你的脸，看你会不会有反应。~
EXTERN C0X1KID2 a2.3

CHAIN C0X1KID3 a2.2
~啊！英雄要变成怪物了！快跑啊！~
EXTERN C0X1KID2 a2.3

CHAIN C0X1KID2 a2.3
~噢，闭嘴。女祭司马上就到，我们得趁她还没——~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
MoveViewPoint([413.501],STANDARD)
Wait(2)
CreateCreature("C0X1DEMI",[411.502],N)
SmallWait(5)
ActionOverride("C0X1DEMI",FaceObject(Player1))
ActionOverride("C0X1KID1",MoveToPoint([476.368]))
ActionOverride("C0X1KID1",SmallWait(1))
ActionOverride("C0X1KID1",FaceObject("C0X1DEMI"))
ActionOverride("C0X1KID3",MoveToPoint([346.355]))
ActionOverride("C0X1KID3",SmallWait(1))
ActionOverride("C0X1KID3",FaceObject("C0X1DEMI"))
SmallWait(5)
ActionOverride("C0X1DEMI",MoveToPoint([413.453]))
MoveToPoint([416.373])
ActionOverride(Player1,MoveToPoint([281.377]))
ActionOverride("C0X1KID1",FaceObject("C0X1DEMI"))
ActionOverride("C0X1KID3",FaceObject("C0X1DEMI"))
FaceObject("C0X1DEMI")
Wait(2)
ActionOverride("C0X1DEMI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",2)~ THEN C0X1DEMI a3
~孩子们……我以为你们更懂事，不会瞒着大人偷偷溜进这种地方。逗乐自己，总该有更好的法子。~
DO ~SetGlobal("C0X1Begin","GLOBAL",3)~
== C0X1KID2 ~对不起，女祭司。~
== C0X1DEMI ~你们没给我们尊贵的客人添麻烦吧？~
== C0X1KID3 ~这个嘛，<PRO_HESHE>本来就在<PRO_HISHER>自己乱扭，我们刚——*哎哟*！~
== C0X1KID2 ~没有，女祭司。~
== C0X1DEMI ~很好。这回就不骂你们了，但记住节庆将近，为了大家，你们都得规规矩矩的。去吧，帮你们的父母做准备。~
== C0X1KID1 ~是，女祭司，我们这就去……~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS02")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",3)~ THEN C0X1DEMI a4
~惊扰之处，还望谅解。纯真的年轻人恢复得比常人快得多……随之而来的，便是他们一贯的淘气。~
DO ~SetGlobal("C0X1Begin","GLOBAL",4)~
== C0X1DEMI ~但愿他们没有过多打扰你的休息。~
END
  ++ ~哪里的话。看到城里无辜的人们渐渐康复，我心里宽慰得很。~ + a4.1
  ++ ~我确实被打扰了……但不是孩子们。你到来前不久，我做了个梦。~ + a4.3b
  ++ ~先不说这个。与艾瑞尼卡斯一战，我已完全康复，急着离开。~ + a4.2

CHAIN C0X1DEMI a4.1
~你真是宽厚，<CHARNAME>。无论有意无意，我们加诸你身上的一切之后，你大可以觉得我们的担忧不值一提，与你所承受的相比。我只盼你自己的恢复也能同样迅速。~
EXTERN C0X1DEMI a4.3a

CHAIN C0X1DEMI a4.2
~是的，我想你已做好重新上路的准备，这也是应当的。让你接受我们这般长时间的例行治疗与观察，我必须致歉。~
EXTERN C0X1DEMI a4.3a

CHAIN C0X1DEMI a4.3a
~过去一周让你留在我们看护之下，希望你没有太过怨愤。这虽令人遗憾，却有必要……琼尼莱斯——放逐者对你灵魂所做的实验，远超我们高等法师所能理解的范畴，我们必须确保他的诅咒在你体内的痕迹尽数消散。~
== C0X1DEMI ~不过截至今日，我原本确信你已彻底康复。你的状况一直在稳步好转，至少我刚才还这么以为……可你看起来不如先前那般好了。~
EXTERN C0X1DEMI a4.4

CHAIN C0X1DEMI a4.3b
~梦？或是某种幻象……我记得你提过，在放逐者折磨之后也经历过类似的事。那些都多多少少与他有关。~
EXTERN C0X1DEMI a4.4

CHAIN C0X1DEMI a4.4
~可曾出现什么不良反应？若有，望你如实相告。这既是为了我们，也是为了你自己。~
END
  ++ ~我梦见了艾瑞尼卡斯……他身处一片炼狱般的景象，被一群嗜血的魔物团团围住，将他淹没，拖入一片岩浆之海。醒来前我记得的最后一幕，是他坠落时的惨叫。~ + a4.5
  ++ ~一切都很模糊。我记不清梦见了什么……但肯定是关于艾瑞尼卡斯，这点我确定。~ + a4.5

CHAIN C0X1DEMI a4.5
~……原来如此。若是在你刚康复时出现，这事会更加令人忧心。不过以我目前掌握的情况来看，我推测这是你灵魂与他之间最后一丝联系被切断时产生的效应，而你不巧在那一刻最后一次看见了他。~
== C0X1DEMI ~我想你再也不会受他纠缠了。这点你大可放心。~
== C0X1DEMI ~……~
END
  ++ ~黛敏？你好像走神了。~ + a4.6
  ++ ~接下来怎么办？~ + a4.7

CHAIN C0X1DEMI a4.6
~嗯？啊，我的想法你不必挂心，<CHARNAME>。我只是在琢磨，女王若知道你所见之事，究竟是好是坏……但鉴于我们眼下的处境，暂且对她保密为妙——就算她终须知道，也不是现在。~
EXTERN C0X1DEMI a4.7

CHAIN C0X1DEMI a4.7
~除了最后一次确认你的身体状况，我来找你还有另一个缘由，<CHARNAME>。这一次是好消息。~
= ~我们的女王已决定筹办绽放庆典，以纪念你的胜利与城市的获救。~
END
  ++ ~绽放庆典是什么？~ + a4.8
  ++ ~我可以参加这个庆典吗？~ + a4.9

CHAIN C0X1DEMI a4.8
~这是我们最期待的庆典，数年才举办一次。这一回举办得格外早……但艾利赛梅女王认为，这对我们的民众是必需的——无论是饱受放逐者屠戮之苦的人，还是从对抗卓尔精灵的战事中归来的人。~
= ~我们族中擅长文艺的人，以及祭司们，都想为民众助兴，舒缓心中的阴郁……经历了这些事，你便能理解，这样一场活动为何此刻比以往任何时候都更受欢迎。~
EXTERN C0X1DEMI a4.9

CHAIN C0X1DEMI a4.9
~你若打算留下参加庆典，自然是万分欢迎。艾利赛梅女王尤其希望你能亲临，为我们增光。~
= ~你或许是长久以来第一位亲眼目睹这场庆典的外乡人……虽说这场悲剧夺走了我们许多最出色的匠人，但余下的人仍足以不让民众……也不让客人失望。~
= ~不过筹备仍需时日。在那之前，艾利赛梅女王希望再与你谈一次——万一你选择踏上下一段旅程、就此离去，这便是最后一面。王宫对你敞开，卫兵会放你进入。你可以在那里找到她。~
= ~至于你的同伴，他们正在外面等你，<CHARNAME>。我们该去见他们了。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS03")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Begin","GLOBAL",4)~ THEN C0X1DEMI a5
~索丹纳萨尔正在复苏。缓慢而艰难……但终有一天，被琼尼莱斯——放逐者重新撕开的旧日伤痕，都会彻底痊愈。~
DO ~SetGlobal("C0X1Begin","GLOBAL",5)~
== C0X1DEMI ~庆典明日开始，持续五天。这段时间里你若想出城料理私事，女王已准许你和同伴自由出入城门。~
== C0X1DEMI ~那么，我得走了。战事虽已结束，从对抗卓尔精灵的战场上归来的人却伤痕累累。不过在此之前……我自己也有些私事要先去料理。再会，<CHARNAME>。~
DO ~EscapeAreaObject("Tran2803")~ EXIT

CHAIN IF ~GlobalGT("C0X1Begin","GLOBAL",4)~ THEN C0X1DEMI a6
~向你致意，<CHARNAME>。有什么能帮到你的？~
END
  + ~!Dead("SUELF10")
  !Dead("C0X1REIR")
  InMyArea("C0X1REIR")~ + ~我需要治疗。~ + a6.1
  + ~OR(3)
  Dead("SUELF10")
  Dead("C0X1REIR")
  !InMyArea("C0X1REIR")~ + ~我需要治疗。~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  + ~Global("C0X1DeminElhan","GLOBAL",3)~ + ~我看见你和埃尔汉争执了。你们是什么关系？~ DO ~SetGlobal("C0X1DeminElhan","GLOBAL",4)~ + a6.2
  ++ ~目前没什么关系。~ EXIT

CHAIN C0X1DEMI a6.1
~当然。很不巧，我眼下正忙着救治从卓尔精灵战事中归来的人，你若需要帮助，请去找蕾拉。~
EXIT

CHAIN C0X1DEMI a6.2
~啊。*叹息* 我记得你当时在场，听到了我们谈话的结尾。请原谅，我那时满心焦躁，连好好招呼你都顾不上。~
= ~你或许已经猜到，埃尔汉和我……曾是夫妻。我们早已分开、各自前行……至少我们愿意这么认为。可一到艰难时分，仍忍不住重翻旧账。~
= ~艾瑞尼卡斯与博迪受诅咒那一日的余波，以及随之而起的紧张气氛，只不过是一连串分歧与争执的导火索……别误会，<CHARNAME>。我们之间并无真正的深仇大恨，否则我不会执意要为他疗伤，他也不会这般抗拒。~
= ~埃尔汉只是……难处了些，这点我想不必我说。他太早强迫自己扛起责任，远超当时的承受能力，这养成了许多他自觉……与身份不符的习气。尽管如此，希望你不要对他太过苛刻。~
= ~好了，这事我不想再多谈。日安。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1DeminElhan","GLOBAL",1)~ THEN C0X1DEMI demin-elhan
~你又一次把必要的流程抛在一边。惹我担心，你从中能找着什么别扭的乐趣不成？~
DO ~SetGlobal("C0X1DeminElhan","GLOBAL",2)~
== C0X1ELHA ~我能走能说，好得很，这你看得清清楚楚。要不是你没完没了地坚持，我早该复职了，何至于像个无助的病号一样被关在家里。~
== C0X1DEMI ~你或许觉得与所有相识的人保持距离是尽责、是体面、是自尊所需，可你要是以为我这样的人会被你这番姿态蒙住，那你的傲慢可算登峰造极了。~
== C0X1ELHA ~……~
== C0X1DEMI ~你心里清楚，我们近来的苦难给所有人都带来了怎样的冲击。所有人，包括你自己在内，你这头倔驴。~
== C0X1ELHA ~你若明白这一点，就该清楚什么才是当务之急！有多少人受的苦远多于我，你的本事用在他们身上，远比用在一个显然不会留下长久伤痛的人身上更有意义！你是不是已经忘了自己身为女祭司的真正职责？~
== C0X1DEMI ~……~
== C0X1DEMI ~……呸。~
== C0X1DEMI ~随你便。我先由着你陷在那不知悔改的自怜里煎熬，但你别以为我会这么轻易放弃。若真是如此，这么久以来，根本不会有人能跟你这股倔强较上劲。~
== C0X1ELHA ~够了，黛敏。那些都已是过去。去照看其他士兵吧。我们这样例行拌嘴对谁都没好处，对我们自己尤其没有。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS04")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1DeminElhan","GLOBAL",2)~ THEN C0X1ELHA demin-elhan2
~*叹息* 我们俩那番不成体统的表现，你看得挺开心吧。~
DO ~SetGlobal("C0X1DeminElhan","GLOBAL",3)~
END
  ++ ~那到底是怎么回事？~ + demin-elhan2-1
  ++ ~看来你不只是惹我心烦，连自己人也被你得罪了。~ + demin-elhan2-1
  ++ ~真没想到黛敏这样的人会看上你这么个难相处的男人。~ + demin-elhan2-2
  ++ ~我没意识到这屋子是你的。~ + demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-1
~只是私人争执，仅此而已。熟识内情的人本就不会进来撞见。~
END
  ++ ~你们俩是不是……？~ + demin-elhan2-2
  ++ ~说起来，这屋子看着就像是为两个人建的。~ + demin-elhan2-2
  ++ ~抱歉闯进来了。我没意识到这屋子是你的。~ + demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-2
~……无妨。正如我说的，都已是过去。我既无意、也无须再纠缠于此。~
EXTERN C0X1ELHA demin-elhan2-3

CHAIN C0X1ELHA demin-elhan2-3
~这是我的家，不过你是外人，不知道也情有可原。近来我很少在此停留，无尽的职责压得我喘不过气。到如今，哪怕偷片刻闲暇，都像是种奢望。~
== C0X1ELHA ~既然这是典礼之后我们头一回见面，我想正是当面谢你的好时机，谢谢你所做的一切。没有你，放逐者会把我们尽数毁灭。而如今……我们将举办绽放庆典，比我预想的早得多。~
END
  ++ ~你听着可不太起劲。~ + demin-elhan2-4
  ++ ~你那样待过我之后，总算该好好谢我了。~ + demin-elhan2-5

CHAIN C0X1ELHA demin-elhan2-4
~我比多数人都更了解我们的女王。这是她为抚平族中深受悲剧创伤之人破碎心神所做的努力。这场庆典或许会是有史以来最盛大的一次，但放逐者的阴影仍会笼罩其上。~
== C0X1ELHA ~不过，它对大多数人，尤其那些纯真的年轻人，想必能起到积极作用，这是件好事。说不定连我也能有机会乐一乐——只要那位女祭司不觉得该把我的“监禁”再延长下去。~
== C0X1ELHA ~不过眼下，我趁她不在，去城里各处走走，看看部下们的状况。你随意自便，<CHARNAME>。这屋子如今很少为我所用，能派上点什么用场也算不白费。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1CS05")~ EXIT

CHAIN C0X1ELHA demin-elhan2-5
~当时的密切看护我认为确有必要，我不会为此致歉；但我也不至于糊涂到无视你的勇气与牺牲，无论你个人的初衷如何。我们都欠你一条命……这场庆典也算一份谢意。~
EXTERN C0X1ELHA demin-elhan2-4

BEGIN C0X1REIR

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1REIR reirra
~<CHARNAME>，我们尊贵的救星！很荣幸再次向你致意。你若需要治疗，我非常乐意为你效劳。~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~黛敏在哪儿？我以为她这会儿该在这儿。~ + reirra.1
  ++ ~我想接受治疗。~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  ++ ~暂时不用。~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1REIR reirra
~瑞利凡恩赐福于你，<CHARNAME>。你需要治疗，还是其他祭司的服务？~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~黛敏在哪儿？我以为她这会儿该在这儿。~ + reirra.1
  ++ ~我想接受治疗。~ DO ~StartStore("C0X1REIR",Lasttalkedtoby)~ EXIT
  ++ ~暂时不用。~ EXIT

CHAIN C0X1REIR reirra.1
~啊……你若找大祭司，她眼下在处理一些私事。她很快就会回来，可你若想自己去找她……~
== C0X1REIR ~这个嘛，她的私事轮不到我置喙。不过事若紧急……就去护符之屋。她若仍在那里，我想你很快就能明白。~
== C0X1REIR ~我能说的就这些。若还需要别的，尽管开口。~
EXIT

BEGIN C0X1EPR1

CHAIN IF WEIGHT #-1 ~RandomNum(3,1) Race(LasttalkedToby(Myself),ELF)~ THEN C0X1EPR1 priest
~愿赛尔达林在你未来的磨难中护佑你，<PRO_BROTHERSISTER>。~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,1) !Race(LasttalkedToby(Myself),ELF)~ THEN C0X1EPR1 priest1
~愿赛尔达林在你未来的磨难中护佑你，精灵之友。~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1EPR1 priest2
~在叶之王的圣殿内，请保持恭敬。~
EXIT

CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1EPR1 priest2
~你若需要治疗，恐怕战争伤员已经太多。或许其他祭司中有人能帮到你。~
EXIT

BEGIN C0X1ELF1

CHAIN IF WEIGHT #-1 ~RandomNum(3,1)~ THEN C0X1ELF1 guard1
~我们的救星！在我们这里，你永远受欢迎，阿迈拉明。~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1ELF1 guard2
~女王已准许你在城中自由行走，英雄。~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1ELF1 guard3
~索丹纳萨尔的英雄，就站在我面前！我向你鞠躬，精灵之友。~
EXIT

BEGIN C0X1ELF2

CHAIN IF WEIGHT #-1 ~RandomNum(3,1)~ THEN C0X1ELF2 bard1
~庆典就要开始了。我们都得拿出最好的状态，让同胞们脸上露出笑容。~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,2)~ THEN C0X1ELF2 bard2
~你好，英雄！~
EXIT
CHAIN IF WEIGHT #-1 ~RandomNum(3,3)~ THEN C0X1ELF2 bard3
~“啦——啦啦，嗯——嗯嗯——嗯”……~
EXIT

BEGIN C0X1ELF3

CHAIN IF WEIGHT #-1 ~True()~ THEN C0X1ELF3 pguard1
~欢迎，英雄。~
END
  ++ ~我可以进王宫吗？~ + pguard1.1
  ++ ~告辞。~ EXIT

CHAIN C0X1ELF3 pguard1.1
~当然。女王已吩咐要给你特别许可。在里面请保持恭敬。~
EXIT

BEGIN C0X1MER1

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1MER1 merchant1
~向你致敬，<CHARNAME>。精灵高等法师中的休因，在此听候差遣。你需要法术卷轴还是药水？女王已下令，除了最隐秘的魔法知识秘藏，其余都可向你开放。~
END
  ++ ~我想看看你这儿有哪些法术。~ DO ~StartStore("C0X1MER1",Lasttalkedtoby)~ EXIT
  ++ ~下回再说吧。~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1MER1 merchant1-1
~又见面了。有什么能为你效劳？~
END
  ++ ~我想看看你这儿有哪些法术。~ DO ~StartStore("C0X1MER1",Lasttalkedtoby)~ EXIT
  ++ ~下回再说吧。~ EXIT

BEGIN C0X1HLE1
BEGIN C0X1HLE2

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",0)~ THEN C0X1HLE1 special1
~我才回来没几天。这地方被他们糟蹋得够呛……可惜我错过了整场热闹。放逐者算走运，我压根没机会收拾他。~
DO ~SetGlobal("C0X1SpecialTalk","GLOBAL",1)~
== C0X1HLE2 ~哼，你还是老样子吹牛。你真要在这儿，早完蛋了……不过我自己也说不上是什么滋味。当时……这一切发生时，我正在外面打卓尔精灵。~
== C0X1HLE1 ~我听说外面来了些外乡人，救了这座城市。是真的吗？我还以为大伙儿又想哄我玩呢，毕竟我离开这么久。~
== C0X1HLE2 ~这会儿谁有功夫哄你啊，傻丫头。都是真的。艾利赛梅女王当着所有人的面亲自嘉奖了他们。~
== C0X1HLE1 ~说起来……我回来之后就没见过女王。她真把自己关在王宫里好几天了？就算是她，这也太过了点。~
== C0X1HLE2 ~嘘！别这么说话。大伙儿又要瞪你了……话说回来，你在外面都闯了些什么祸？最好带了什么了不起的魔法战利品给我瞧瞧。~
== C0X1HLE1 ~嘿嘿！还真有。你就等着瞧……~
DO ~FaceObject("C0X1HLE2")
ActionOverride("C0X1HLE2",FaceObject("C0X1HLE1"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",0)~ THEN C0X1HLE2 special2
~你可算回来了！你知道近来这儿都成什么样了吗？我们还能这么说上话，我都该算走运了！~
EXTERN C0X1HLE1 special1

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",1)~ THEN C0X1HLE1 special3
~对了，想不想待会儿一块儿去吃点东西？我太久没尝到那些熟悉的老味道了，饿得慌。~
DO ~SetGlobal("C0X1SpecialTalk","GLOBAL",2)~
== C0X1HLE2 ~好啊！我们有好多事要叙呢。而且，你一定要尝尝新出的芭菲。好吃得要命……嗯。~
== C0X1HLE1 ~说到吃的，不久前我尝过一种新奇的异域菜肴，觉得你也该试试。我不太清楚里面放了什么，只知道有长老巨……~
== C0X1HLE2 ~不听不听！我不要听这个！~
== C0X1HLE1 ~你确定？味道可比听上去强多了。卖相也是，不过你得亲临其境才能——~
== C0X1HLE2 ~我不管，我不想听！上次你骗我吃那道放了史莱姆的菜，我到现在还没原谅你呢！~
== C0X1HLE1 ~随你。那就吃甜点好了。~
DO ~FaceObject("C0X1HLE2")
ActionOverride("C0X1HLE2",FaceObject("C0X1HLE1"))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1SpecialTalk","GLOBAL",1)~ THEN C0X1HLE2 special4
~洗锅刷碗的法术，真的？这……是不怎么带劲，不过确实管用。给我也来一份。~
EXTERN C0X1HLE1 special3

BEGIN C0X1ELLE

CHAIN IF WEIGHT #-1 ~Global("C0X1Ellesime","GLOBAL",0)~ THEN C0X1ELLE ellesime
~啊……是你，<CHARNAME>。看到你终于摆脱祭司们的看护，我松了口气。~
DO ~SetGlobal("C0X1Ellesime","GLOBAL",1)~
== C0X1ELLE ~我想这就意味着……一切确实结束了。琼——他已经不在了。你也终于自由了。~
END
  ++ ~沾染巴尔之血的人能有多少自由，大概也就这样了吧。~ + ellesime.1
  ++ ~我找回了自己的灵魂。可就它的本质而言，我不能说自己是真正自由的。~ + ellesime.1
  ++ ~这段时间为我和同伴们所做的一切，谢谢你，艾利赛梅女王。在此逗留，我很愉快。~ + ellesime.2
  ++ ~自由了，再来领我的报酬。看在我不顾你的愚蠢、为你做了这么多的份上，这回报早就该给了。~ + ellesime.3

CHAIN C0X1ELLE ellesime.1
~是的，这话不假……虽说你的灵魂已重新安稳居于你体内，可时至今日，这仍不能让你真正安全。你背负的是沉重的担子……或许远比我的更重。我不禁钦佩你的坚韧。~
= ~但愿你在城中逗留的这段时光，至少寻得了几分安宁。你见识到的，只是我们家园未经战火玷污的真貌之一角；历经磨难之后，我们已尽全力帮你的身心复原。~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.2
~这不过是你凭一番英勇与牺牲所应得的沧海一粟，<CHARNAME>。说到底……无论怎样补偿，都无法弥补你因我们……因我的短视而蒙受的难以言说的苦难。~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.3
~当然。鉴于你因我们的过错所做的一切、所受的苦难，你配得上的财富，绝不亚于你最疯狂的梦想，甚至更多。我们的库管已在你歇息之处留下了一份相称的报酬……若还不够，后续还会有。~
EXTERN C0X1ELLE ellesime.4

CHAIN C0X1ELLE ellesime.4
~过去一个月发生的事，让我想了很多……冲突结束后，我就再没离开过王宫。起初我还自欺欺人地以为这是某种苦修，可如今看得很清楚：我只是在躲避自己的疑虑，荒废了身为女王的职责。~
= ~你一定觉得我这模样令人失望。一个古老民族的至高女王、瑞利凡恩所选之人……先是沦为自己所造之敌的阶下囚，如今又像个害怕遭报复的孩子一样蜷缩在家里……你心中若有任何鄙夷，都不必掩饰，<CHARNAME>。我受之无愧，甚至不止于此。~
END
  ++ ~换作任何人处在你的位置，感受都会一样。这没什么可羞愧的。~ + ellesime.5
  ++ ~你犯了个错，后果惨痛。但伤害既已造成，我也已夺回灵魂。只要你不再重蹈覆辙，我可以原谅你。~ + ellesime.5
  ++ ~我不否认对你心存怨怼，而且理由充分。但我看得出你是真心悔悟。这份恨意，我实在无法再攥着不放。~ + ellesime.5
  ++ ~你若想弥补所作所为，干脆用我想要的权力和财富来酬报我。空话毫无意义。~ + ellesime.6
  ++ ~因为你，我好几次险些丧命，一路上失去了好几个朋友，还承受了失去灵魂的剧痛。我有多愤怒，言语根本说不尽。~ + ellesime.7
  ++ ~你这可悲的女人。你的愚蠢酿成了这么多祸事，居然还有脸躲在这里乞求同情。从我这儿，你什么都得不到。~ + ellesime.7

CHAIN C0X1ELLE ellesime.5
~你的宽宏大量，远超我配得上的程度，<CHARNAME>。想想吧，我竟一度自以为对琼尼莱斯的判决已是仁慈……何等短视。因我之故，你分担了他的苦难，可与他不同，我看得出你从未向黑暗屈服，尽管你有着那样的血脉。~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.6
~财富与权力，我可以给你，<CHARNAME>，这并非难事。或许太容易了……比起指望相信你已真正原谅我，这要轻松得多。~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.7
~很少有人敢对一位女王如此直白、如此直言不讳地宣泄怒火，<CHARNAME>。或许除了……琼尼莱斯本人，再无旁人。你比你以为的更像他……像他从前的样子。~
EXTERN C0X1ELLE ellesime.8

CHAIN C0X1ELLE ellesime.8
~无论你作何感想，<CHARNAME>，能与你这般短暂同行，我终究是高兴的。抛开身份所需，我原以为自己甚至不愿面对你……可实际比想象中容易。~
= ~无论如何，眼下有一桩更令人欣喜的事，我想你已得知绽放庆典即将开始。虽说是竭尽所能之举，我仍希望它能重振我族人被压垮的心神。~
= ~按惯例，最后一日我要向在场所有人致辞，届时我希望你能作为贵宾出面，好让众人都见识一下我们城市救星的面容。~
= ~但若你更愿继续远行，我可以安排助你出城……事实上，我或许能为你指引下一处理想的目的地。~
= ~选择在你，<CHARNAME>。我们有幸得享片刻安宁，尽管脆弱。你若能多留些时日，我会倍感荣幸；但我也明白，前路等着你是严峻的命运……你若选择此刻直面它，或许才是最好的安排。~
END
  + ~Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~你建议我接下来去哪儿？~ + ellesime.9
  ++ ~我很乐意参加庆典。~ + ellesime.10
  ++ ~庆祝活动引不起我的兴趣，不过我在安姆还有未了结的事。我打算先留在这一带。~ + ellesime.11

CHAIN C0X1ELLE ellesime.9
~你若想继续命中注定的旅程……泰瑟尔森林深处有一片神圣林地，除了识得路径之人，无人知晓。这一直是索丹纳萨尔王族血脉才得以保留的秘传。~
DO ~SetGlobal("C0X1EllesimeGrove","GLOBAL",1)~
= ~在那里，许多精灵族的古老魂魄守护着远在我记忆之前的世代所传下的族中知识，或许能将智慧赐予你，点化你该走哪条路，去完成你作为巴尔后裔的命运。~
= ~赛尔达林与所有神明一样，不得直接干预你这种有神性血脉之人，但我已与他们沟通，确定冲突将再度升起：其他巴尔后裔会像你陨落的兄长萨雷沃克曾经那样，谋求登顶。无论你是想在这场角逐中占得一席之地，还是仅仅为了活下去，我先祖们的帮助或许都能派上用场。~
= ~你若想去那片林地，我愿亲自为你引路。随时开口便是。~
END
  ++ ~我现在就想去。是时候面对命运的下一段了。~ + ellesime.12
  ++ ~我自己的事可以等等。我想参加庆典。~ + ellesime.10
  ++ ~离开之前，我在安姆还有些事要办。~ + ellesime.11

CHAIN C0X1ELLE ellesime.10
~那我就亲自负责我这边的筹备。记住，我希望你能参加最后一日的典礼，<CHARNAME>。~
EXTERN C0X1ELLE ellesime.13

CHAIN C0X1ELLE ellesime.11
~如你所愿。通往索丹纳萨尔的道路将永远向你及追随你的人敞开，<CHARNAME>。~
EXTERN C0X1ELLE ellesime.13

CHAIN C0X1ELLE ellesime.12
~那就这样。预祝你一路顺遂，<CHARNAME>，这趟路无疑会很艰辛。不过在我们出发之前……有样东西，我想亲手交给你。~
== C0X1ELLE ~赛尔达林护符……这是我们能赠予外乡人最贵重的礼物之一。我本想在庆典最后一日亲手为你戴上，作为我谢意的象征。可你即将离去，如今这已不可能了。~
== C0X1ELLE ~跟我来。我带你去那片林地，你的未来将在那里向你揭晓。~
DO ~SetGlobal("soa_complete","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0X1END")~ EXIT

CHAIN C0X1ELLE ellesime.13
~明日绽放庆典便将开始。无论你去留，我都已准备好协助你迈出下一步。眼下，先去料理你手头的事吧。再会，<CHARNAME>。~
EXIT

BEGIN C0X1ELL2

CHAIN IF WEIGHT #-1 ~Global("C0X1EllesimeToB","GLOBAL",0)~ THEN C0X1ELL2 ellesimetob
~我们如今立于我族人的古老林地之前。你眼前所见，是先祖们的安息之所，他们的魂魄栖居在这一带各处的石雕头颅之中。~
DO ~SetGlobal("C0X1EllesimeToB","GLOBAL",1)~
= ~在我记忆所及，唯有精灵王族踏足过这片圣地。不过我们一进入，魂魄们便已感知到我的存在；你向他们祈求智慧时，他们自会回应。~
= ~森林外围布有古老的守护结界，可保你的冥想不被打断。无论哪条路对你最为明智，你都必将在此领会……无论结果是福是祸。~
= ~我能为你做的已不多，<CHARNAME>，唯有为你余下的旅程祈祷好运。再会，愿你有朝一日能挣脱宿命、安然归来。~
DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0X1Ellesime","GLOBAL",1)~ THEN C0X1ELLE ellesime22
~我看你回来了，<CHARNAME>。这里永远欢迎你。需要什么吗？~
END
  + ~Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~我想打听你说过的那个地方，能为我指明下一段道路的。~ + ellesime.9
  + ~!Global("C0X1EllesimeGrove","GLOBAL",0)~ + ~我想去你提到的那片林地。~ + ellesime.12
  ++ ~暂时不用，艾利赛梅女王。~ + ellesime.14

CHAIN C0X1ELLE ellesime.14
~那祝你好运，<CHARNAME>。~
EXIT

BEGIN C0X1CAPT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0X1CAPT captain
~<CHARNAME>。见你身体康健，甚好。请原谅，我还有操练要盯。战事虽已结束，但这一仗让我们明白，仍有许多需要精进之处。~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~埃尔汉在哪儿？我以为他会负责你部下的事务。~ + captain.1
  ++ ~那我不打扰你了，队长。~ DO ~Face(SE)~ EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)~ THEN C0X1CAPT captain1
~<DAYNIGHTALL>好，<CHARNAME>。~
END
  + ~Global("C0X1DeminElhan","GLOBAL",0)~ + ~埃尔汉在哪儿？我以为他会负责你部下的事务。~ + captain.1
  ++ ~那我不打扰你了，队长。~ DO ~Face(SE)~ EXIT

CHAIN C0X1CAPT captain.1
~指挥官……正在养伤，那是守城时落下的。~
== C0X1CAPT ~……不，恐怕这只说对了一半。我很了解他，只要还能走路，他铁定就在这儿，尤其在出了那些事之后。是高祭……祭司们坚持让他待在家里，直到伤势彻底痊愈。~
== C0X1CAPT ~我不该让你去打扰他，不过你若想见他，他在护符之屋。我担心他眼下的状态——是心境，而非身体。尤其“她”这会儿若也在那里……~
== C0X1CAPT ~请原谅，我说得太多了。我得回去操练了。~
DO ~Face(SE)~ EXIT

