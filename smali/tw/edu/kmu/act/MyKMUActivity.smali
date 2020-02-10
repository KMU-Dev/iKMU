.class public Ltw/edu/kmu/act/MyKMUActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "MyKMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/MyKMUActivity$GetPingCode;,
        Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;,
        Ltw/edu/kmu/act/MyKMUActivity$GetCurrentClassData;,
        Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;,
        Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;
    }
.end annotation


# static fields
.field private static final BEACONS_REGION:Lcom/estimote/sdk/Region;

.field private static final TAG:Ljava/lang/String; = "MyKMUActivity"

.field private static final SMALI_TAG:Ljava/lang/String; = "Smali: MyKMUActivity"


# instance fields
.field private beaconClassDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private beaconManager:Lcom/estimote/sdk/BeaconManager;

.field private classDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private classList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classRoomList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configData:Ltw/edu/kmu/vo/ConfigData;

.field private dialog:Landroid/app/AlertDialog;

.field private dialog4Beacon:Landroid/app/AlertDialog;

.field private dialog4Switch:Landroid/app/AlertDialog;

.field private dialog4TASwitch:Landroid/app/AlertDialog;

.field private dialog4TBLClass:Landroid/app/AlertDialog;

.field private dialog4TBLSwitch:Landroid/app/AlertDialog;

.field private elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation
.end field

.field private elementsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltw/edu/kmu/view/TreeElement;",
            ">;"
        }
    .end annotation
.end field

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private pingTimeThreshold:D

.field private schedulerPing:Ljava/util/concurrent/ScheduledExecutorService;

.field private tblClassDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Lcom/estimote/sdk/Region;

    const-string v1, "A3"

    const-string v2, "b9407f30-f5f8-466e-aff9-25556b57fe6d"

    const v3, 0x11170

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0xda72

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estimote/sdk/Region;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Ltw/edu/kmu/act/MyKMUActivity;->BEACONS_REGION:Lcom/estimote/sdk/Region;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classList:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 75
    iput-wide v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->pingTimeThreshold:D

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconClassDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1202(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconClassDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Ltw/edu/kmu/act/MyKMUActivity;->showBeaconClassDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TBLClass:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1602(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ltw/edu/kmu/act/MyKMUActivity;->showTBLClassDialog()V

    return-void
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/MyKMUActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1902(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->classDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ltw/edu/kmu/act/MyKMUActivity;->showCurrentClassDialog()V

    return-void
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/MyKMUActivity;)D
    .locals 2

    .line 53
    iget-wide v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->pingTimeThreshold:D

    return-wide v0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ltw/edu/kmu/act/MyKMUActivity;->showSwitchDialog()V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ltw/edu/kmu/act/MyKMUActivity;->showTBLSwitchDialog()V

    return-void
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/vo/ConfigData;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->configData:Ltw/edu/kmu/vo/ConfigData;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/MyKMUActivity;)Lcom/estimote/sdk/BeaconManager;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 30

    move-object/from16 v1, p0

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ltw/edu/kmu/act/MyKMUActivity;->elements:Ljava/util/ArrayList;

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ltw/edu/kmu/act/MyKMUActivity;->elementsData:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 1030
    :goto_0
    :try_start_0
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->classDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_9

    .line 1031
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->classDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/HashMap;

    .line 1032
    new-instance v13, Lorg/json/JSONArray;

    const-string v2, "teacherList"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v13, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "classRoom"

    .line 1033
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1034
    sget-object v3, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classRoom is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v3, v1, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    :cond_0
    move-object/from16 v28, v2

    const-string v2, "\u5b78\u751f"

    .line 1038
    iget-object v3, v1, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1039
    new-instance v12, Ltw/edu/kmu/view/TreeElement;

    const-string v2, "\u5b78\u751f"

    iget-object v3, v1, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "englishco"

    goto :goto_1

    :cond_1
    const-string v2, "className"

    :goto_1
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    move-object v4, v2

    goto :goto_4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_3

    const-string v3, "englishco"

    goto :goto_3

    :cond_3
    const-string v3, "className"

    :goto_3
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "classId"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_4
    const-string v5, ""

    const-string v6, ""

    iget-boolean v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_4

    const-string v2, "englishco"

    goto :goto_5

    :cond_4
    const-string v2, "className"

    :goto_5
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v2, v12

    move-object/from16 v3, v28

    move v10, v14

    move-object v0, v12

    move/from16 v12, v16

    move-object/from16 v29, v13

    move/from16 v13, v17

    invoke-direct/range {v2 .. v13}, Ltw/edu/kmu/view/TreeElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 1040
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1042
    :goto_6
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    move-object/from16 v3, v29

    .line 1043
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1044
    new-instance v5, Ltw/edu/kmu/view/TreeElement;

    iget-boolean v6, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v6, :cond_5

    const-string v6, "teafenam"

    goto :goto_7

    :cond_5
    const-string v6, "teacherName"

    :goto_7
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "classId"

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    const-string v6, "teacherNo"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    iget-boolean v6, v1, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v6, :cond_6

    const-string v6, "englishco"

    goto :goto_8

    :cond_6
    const-string v6, "className"

    :goto_8
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Ljava/lang/String;

    const-string v6, "seqno"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    add-int v24, v14, v2

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getId()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v28

    invoke-direct/range {v16 .. v27}, Ltw/edu/kmu/view/TreeElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 1045
    iget-object v4, v1, Ltw/edu/kmu/act/MyKMUActivity;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v3

    goto :goto_6

    .line 1048
    :cond_7
    new-instance v0, Ltw/edu/kmu/view/TreeElement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "classId"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "classId"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v2, "teafno"

    .line 1049
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const-string v2, "className"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const-string v2, "seqno"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v0

    move-object/from16 v3, v28

    move v10, v14

    invoke-direct/range {v2 .. v13}, Ltw/edu/kmu/view/TreeElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 1050
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object v2, v1, Ltw/edu/kmu/act/MyKMUActivity;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 1056
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_9
    const-string v0, "layout_inflater"

    .line 1058
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1059
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08011b

    .line 1060
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    const/4 v3, -0x1

    .line 1061
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1063
    new-instance v3, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;

    iget-object v4, v1, Ltw/edu/kmu/act/MyKMUActivity;->elements:Ljava/util/ArrayList;

    iget-object v5, v1, Ltw/edu/kmu/act/MyKMUActivity;->elementsData:Ljava/util/ArrayList;

    # get SMALI_TAG
    sget-object v6, Ltw/edu/kmu/act/MyKMUActivity;->SMALI_TAG:Ljava/lang/String;

    # set fake class room
    # const/4 v7, 0x0

    # invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    # move-result-object v7

    # check-cast v7, Ltw/edu/kmu/view/TreeElement;

    # const-string v8, "IR 301"

    # invoke-virtual {v7, v8}, Ltw/edu/kmu/view/TreeElement;->setClassRoom(Ljava/lang/String;)V

    invoke-direct {v3, v1, v4, v5, v0}, Ltw/edu/kmu/adapter/CurrentClassTreeViewAdapter;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V

    .line 1064
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method

.method private showBeaconClassDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1343
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " teacherNo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " teacherName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seqNo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chineseco is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 1346
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0c00f8

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8868\u5b9a\u8ab2\u7a0b\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6559\u5e2b\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\u662f\u5426\u76f4\u63a5\u9032\u5165\u7b54\u984c\u9801\u9762?"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1350
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyKMUActivity;->getStringById(I)Ljava/lang/String;

    move-result-object p3

    new-instance v7, Ltw/edu/kmu/act/MyKMUActivity$32;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/act/MyKMUActivity$32;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0c00f9

    .line 1359
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->getStringById(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ltw/edu/kmu/act/MyKMUActivity$33;

    invoke-direct {p2, p0}, Ltw/edu/kmu/act/MyKMUActivity$33;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1366
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    if-nez p1, :cond_1

    .line 1367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 1371
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8868\u5b9a\u8ab2\u7a0b"

    .line 1373
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1374
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyKMUActivity;->getStringById(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ltw/edu/kmu/act/MyKMUActivity$34;

    invoke-direct {p2, p0}, Ltw/edu/kmu/act/MyKMUActivity$34;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private showCurrentClassDialog()V
    .locals 3

    .line 1200
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classDataList:Ljava/util/ArrayList;

    # Log class Data List
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltw/edu/kmu/act/MyKMUActivity;->SMALI_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1204
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1205
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "Course & Instructor"

    goto :goto_0

    :cond_1
    const-string v1, "\u9078\u64c7\u8ab2\u7a0b\u8207\u8001\u5e2b"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1206
    invoke-direct {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1207
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00f9

    .line 1215
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$29;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$29;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private showSwitchDialog()V
    .locals 5

    const/4 v0, 0x2

    .line 1073
    new-array v0, v0, [Ljava/lang/String;

    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Answering in course"

    goto :goto_0

    :cond_0
    const-string v1, "\u8ab2\u4e2d\u7b54\u984c"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Answer/question history"

    goto :goto_1

    :cond_1
    const-string v2, "\u4f5c\u7b54/\u63d0\u554f\u8a18\u9304"

    :goto_1
    aput-object v2, v0, v1

    .line 1074
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1075
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "IRS"

    .line 1076
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "Cancel"

    goto :goto_2

    :cond_2
    const-string v3, "\u53d6\u6d88"

    :goto_2
    new-instance v4, Ltw/edu/kmu/act/MyKMUActivity$25;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/MyKMUActivity$25;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    .line 1077
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1084
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f080122

    .line 1087
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1088
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1089
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1090
    new-instance v0, Ltw/edu/kmu/act/MyKMUActivity$26;

    invoke-direct {v0, p0, v2}, Ltw/edu/kmu/act/MyKMUActivity$26;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1111
    iput-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Switch:Landroid/app/AlertDialog;

    .line 1112
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Switch:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showTASwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 p1, 0x4

    .line 1120
    new-array p1, p1, [Ljava/lang/String;

    iget-boolean v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    const-string v0, "\u6a21\u64ec\u5b78\u751f\u4f5c\u7b54"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    const-string v1, "\u5feb\u901f\u51fa\u984c"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    const-string v1, "\u63d0\u554f\u56de\u8986"

    aput-object v1, p1, v0

    iget-boolean v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    const-string v0, "IRS\u7db2\u9801"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 1121
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0a004d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1122
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IRS\u8ab2\u7a0b("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Cancel"

    goto :goto_0

    :cond_0
    const-string v2, "\u53d6\u6d88"

    :goto_0
    new-instance v3, Ltw/edu/kmu/act/MyKMUActivity$27;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/MyKMUActivity$27;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    .line 1124
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1131
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080122

    .line 1134
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1135
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1137
    new-instance p1, Ltw/edu/kmu/act/MyKMUActivity$28;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Ltw/edu/kmu/act/MyKMUActivity$28;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1190
    iput-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TASwitch:Landroid/app/AlertDialog;

    .line 1191
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TASwitch:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showTBLClassDialog()V
    .locals 5

    .line 1232
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1234
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/edu/kmu/act/TBLCourseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "serverDataList"

    .line 1237
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1243
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1244
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1245
    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->tblClassDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "englishco"

    goto :goto_1

    :cond_2
    const-string v3, "chineseco"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_3
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080122

    .line 1260
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1261
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1263
    new-instance v0, Ltw/edu/kmu/act/MyKMUActivity$30;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/MyKMUActivity$30;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1280
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u8ab2\u7a0b"

    .line 1281
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00f9

    .line 1282
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$31;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$31;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TBLClass:Landroid/app/AlertDialog;

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private showTBLSwitchDialog()V
    .locals 5

    const/4 v0, 0x3

    .line 431
    new-array v1, v0, [Ljava/lang/String;

    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Answering in course"

    goto :goto_0

    :cond_0
    const-string v2, "\u8ab2\u4e2d\u7b54\u984c"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "My group"

    goto :goto_1

    :cond_1
    const-string v3, "\u6211\u7684\u5206\u7d44"

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "Answer history"

    goto :goto_2

    :cond_2
    const-string v3, "\u4f5c\u7b54\u8a18\u9304"

    :goto_2
    aput-object v3, v1, v2

    .line 432
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a004d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 433
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-boolean v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    const-string v0, "\u6d3b\u52d5\u5c08\u5340"

    .line 434
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v3, :cond_3

    const-string v3, "Cancel"

    goto :goto_3

    :cond_3
    const-string v3, "\u53d6\u6d88"

    :goto_3
    new-instance v4, Ltw/edu/kmu/act/MyKMUActivity$10;

    invoke-direct {v4, p0}, Ltw/edu/kmu/act/MyKMUActivity$10;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    .line 435
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v3, 0x7f080122

    .line 445
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 446
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090003

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$11;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/act/MyKMUActivity$11;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 475
    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TBLSwitch:Landroid/app/AlertDialog;

    .line 476
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4TBLSwitch:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkBluetooth()V
    .locals 3

    .line 787
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkBluetooth start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Lcom/estimote/sdk/BeaconManager;

    invoke-direct {v0, p0}, Lcom/estimote/sdk/BeaconManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    .line 791
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/estimote/sdk/BeaconManager;->hasBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/estimote/sdk/BeaconManager;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u85cd\u7259\u672a\u958b\u555f"

    const/4 v1, 0x1

    .line 804
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 805
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 806
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 810
    :cond_1
    invoke-static {p0}, Ltw/edu/kmu/vo/ConfigData;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/vo/ConfigData;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->configData:Ltw/edu/kmu/vo/ConfigData;

    .line 811
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->connectToService()V

    :goto_0
    return-void
.end method

.method public connectToService()V
    .locals 2

    .line 819
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "connectToService start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$23;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$23;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Lcom/estimote/sdk/BeaconManager;->connect(Lcom/estimote/sdk/BeaconManager$ServiceReadyCallback;)V

    .line 842
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$24;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$24;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Lcom/estimote/sdk/BeaconManager;->setMonitoringListener(Lcom/estimote/sdk/BeaconManager$MonitoringListener;)V

    return-void
.end method

.method protected getLayoutId()I
    .locals 2

    .line 1602
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0089

    goto :goto_0

    :cond_0
    const v0, 0x7f0a008c

    :goto_0
    return v0
.end method

.method public initBtn()V
    .locals 4

    const v0, 0x7f080070

    .line 143
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$2;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080074

    .line 157
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$3;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080075

    .line 171
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 172
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$4;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080076

    .line 182
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$5;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080077

    .line 197
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 198
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$6;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$6;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080078

    .line 213
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 214
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$7;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080079

    .line 271
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 272
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$8;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$8;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007a

    .line 329
    # IRS button
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 330
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$9;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$9;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08007b

    .line 385
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 386
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v2, "\u6559\u8077\u54e1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v2, "\u884c\u653f\u4eba\u54e1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->initWacTaBtn()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    const v2, 0x7f070172

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v3, "\u5b78\u751f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v3, "\u6d3b\u52d5\u5c08\u5340"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 400
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->initTBLActBtn()V

    :cond_3
    :goto_0
    return-void
.end method

.method public initTBLActBtn()V
    .locals 3

    const v0, 0x7f080175

    .line 409
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f080176

    .line 412
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0801aa

    .line 415
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 416
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0801ab

    .line 418
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 419
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0801ac

    .line 421
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 422
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0801ad

    .line 424
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 425
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public initWacTaBtn()V
    .locals 3

    const v0, 0x7f080176

    .line 485
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0801ad

    .line 488
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0801ac

    .line 491
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 492
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 493
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v0, 0x7f080070

    .line 496
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 497
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070105

    goto :goto_0

    :cond_0
    const v2, 0x7f0700fc

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$12;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$12;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080074

    .line 510
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 511
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const v2, 0x7f070106

    goto :goto_1

    :cond_1
    const v2, 0x7f0700fd

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 512
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$13;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$13;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080075

    .line 527
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 528
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_2

    const v2, 0x7f070107

    goto :goto_2

    :cond_2
    const v2, 0x7f0700fe

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 529
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$14;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$14;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080076

    .line 546
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 547
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_3

    const v2, 0x7f070108

    goto :goto_3

    :cond_3
    const v2, 0x7f0700ff

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 548
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$15;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$15;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080077

    .line 597
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 598
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_4

    const v2, 0x7f070109

    goto :goto_4

    :cond_4
    const v2, 0x7f070100

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 599
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$16;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$16;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080078

    .line 650
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 651
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_5

    const v2, 0x7f070191

    goto :goto_5

    :cond_5
    const v2, 0x7f07018b

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 652
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$17;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$17;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080079

    .line 665
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 666
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_6

    const v2, 0x7f070192

    goto :goto_6

    :cond_6
    const v2, 0x7f07018c

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 667
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$18;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$18;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007a

    .line 682
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 683
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v2, :cond_7

    const v2, 0x7f070193

    goto :goto_7

    :cond_7
    const v2, 0x7f07018d

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 684
    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$19;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$19;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08007b

    .line 698
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 699
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 700
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_8

    const v1, 0x7f070194

    goto :goto_8

    :cond_8
    const v1, 0x7f07018e

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 701
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$20;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$20;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080071

    .line 716
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 717
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_9

    const v1, 0x7f070195

    goto :goto_9

    :cond_9
    const v1, 0x7f07018f

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 718
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$21;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$21;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080072

    .line 733
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 734
    iget-boolean v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    if-eqz v1, :cond_a

    const v1, 0x7f070196

    goto :goto_a

    :cond_a
    const v1, 0x7f070190

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 735
    new-instance v1, Ltw/edu/kmu/act/MyKMUActivity$22;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/MyKMUActivity$22;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isFunctionButtonExist()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isUseCustomTitleBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 88
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->display:Landroid/view/Display;

    .line 90
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->initBtn()V

    .line 94
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->setBtnLy()V

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity;->classList:Ljava/util/ArrayList;

    .line 103
    sget-object p1, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1619
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 1621
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/estimote/sdk/BeaconManager;->disconnect()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1657
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 1659
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->beaconManager:Lcom/estimote/sdk/BeaconManager;

    invoke-virtual {v0}, Lcom/estimote/sdk/BeaconManager;->disconnect()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1629
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    .line 1631
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->checkBluetooth()V

    .line 1632
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "\u6559\u8077\u54e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "\u884c\u653f\u4eba\u54e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1634
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->initWacTaBtn()V

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    const v1, 0x7f070172

    const v2, 0x7f08007a

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v3, "\u5b78\u751f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1638
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1639
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f0801ad

    .line 1642
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 1643
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1645
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v3, "\u6d3b\u52d5\u5c08\u5340"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1647
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1648
    iget-boolean v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->isEnglish:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1649
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->initTBLActBtn()V

    :cond_3
    :goto_0
    return-void
.end method

.method public parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1443
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1444
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1445
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1446
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1447
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1448
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1449
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1450
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1451
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1453
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1459
    sget-object v1, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseClassList Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1572
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 1573
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x1000

    .line 1575
    new-array p1, p1, [C

    .line 1576
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x40

    .line 1577
    new-array v3, v3, [Ljava/lang/String;

    const/16 v3, 0x8

    .line 1578
    new-array v3, v3, [Ljava/lang/String;

    .line 1579
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 1580
    invoke-virtual {v2, p1, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1581
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1582
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 1583
    aget-object p1, p1, v1

    const-string v2, "time="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1586
    aget-object v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1587
    :try_start_1
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 1590
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v2
.end method

.method public setBtnLy()V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btnIcon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    iget-object v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 134
    iget-object v3, p0, Ltw/edu/kmu/act/MyKMUActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0xa

    div-int/lit8 v3, v3, 0xa

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLy4HVGA()V
    .locals 6

    .line 759
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/16 v1, 0x140

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    .line 761
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string v1, "width is 320 and height is 480"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 765
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btnIcon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 766
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 767
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x55

    div-int/lit8 v4, v4, 0x64

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 768
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v4, v4, 0x55

    div-int/lit8 v4, v4, 0x64

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 769
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gt v0, v2, :cond_1

    .line 776
    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {p0}, Ltw/edu/kmu/act/MyKMUActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 777
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/high16 v4, 0x42aa0000    # 85.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startIRSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 952
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 956
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->dialog4Beacon:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 961
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v1, "\u6559\u8077\u54e1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    invoke-direct/range {p0 .. p5}, Ltw/edu/kmu/act/MyKMUActivity;->showTASwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 970
    :cond_2
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClickEvent classRoom is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    sget-object v0, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classRoomList is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 972
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 975
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "\u6c92\u6383\u5230\u6559\u5ba4,\u8acb\u91cd\u65b0\u6383\u7784"

    const/4 p2, 0x1

    .line 984
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 p3, 0x0

    .line 985
    invoke-virtual {p1, p2, p3, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 986
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 987
    sget-object p1, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    const-string p2, "\u6c92\u6383\u5230"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 996
    :cond_4
    :goto_0
    sget-object p1, Ltw/edu/kmu/act/MyKMUActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClickEvent classId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " teacherNo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seqNo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "classId"

    .line 999
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "teacherNo"

    .line 1000
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "className"

    .line 1001
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "seqno"

    .line 1002
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userID"

    .line 1003
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userType"

    .line 1004
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userName"

    .line 1005
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "classRoomList"

    .line 1006
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity;->classRoomList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1014
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startPing()V
    .locals 8

    .line 109
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity;->schedulerPing:Ljava/util/concurrent/ScheduledExecutorService;

    .line 110
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity;->schedulerPing:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ltw/edu/kmu/act/MyKMUActivity$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/MyKMUActivity$1;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
