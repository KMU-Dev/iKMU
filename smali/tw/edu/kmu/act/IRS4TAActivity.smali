.class public Ltw/edu/kmu/act/IRS4TAActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;,
        Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;,
        Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolSingle;,
        Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;,
        Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;,
        Ltw/edu/kmu/act/IRS4TAActivity$GetPoolTypeList;,
        Ltw/edu/kmu/act/IRS4TAActivity$GetSeqList;,
        Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRS4TAActivity"


# instance fields
.field private alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

.field private ansUserId:Ljava/lang/String;

.field private ansUserName:Ljava/lang/String;

.field private btn1Listener:Landroid/view/View$OnClickListener;

.field private btnDeatil:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private button1:Landroid/widget/RadioButton;

.field private button2:Landroid/widget/RadioButton;

.field private button3:Landroid/widget/RadioButton;

.field private chart:Llecho/lib/hellocharts/view/ColumnChartView;

.field private classId:Ljava/lang/String;

.field private client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field private currentPooId:Ljava/lang/String;

.field private currentSeqno:Ljava/lang/String;

.field private currentType:Ljava/lang/String;

.field private dialog4PoolType:Landroid/app/AlertDialog;

.field private dialog4SeqNo:Landroid/app/AlertDialog;

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

.field private exPooId:Ljava/lang/String;

.field private exPoolKey:[Ljava/lang/String;

.field private exPoolList:Ljava/util/ArrayList;
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

.field private exPoolValue:[Ljava/lang/String;

.field private examDataList:Ljava/util/ArrayList;
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

.field private form1:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private hasAxes:Z

.field private host:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private poolTypeList:Ljava/util/ArrayList;
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

.field private regId:Ljava/lang/String;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private segGroup:Ltw/edu/kmu/view/SegmentedGroup;

.field private seqDataList:Ljava/util/ArrayList;
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

.field private subquList:Ljava/util/ArrayList;
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

.field title1:Landroid/widget/TextView;

.field private userID:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "tcp://mbms.kmu.edu.tw:1883"

    .line 78
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->host:Ljava/lang/String;

    const-string v0, "1"

    .line 87
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->classId:Ljava/lang/String;

    const-string v0, "all"

    .line 88
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentSeqno:Ljava/lang/String;

    const-string v0, "https://mbms.kmu.edu.tw:443/KmuIrs/file.serv?fileID="

    .line 95
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->imageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->ansUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->ansUserName:Ljava/lang/String;

    const-string v0, "1"

    .line 103
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentType:Ljava/lang/String;

    const-string v0, ""

    .line 106
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->regId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->hasAxes:Z

    .line 398
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRS4TAActivity$4;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btn1Listener:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRS4TAActivity$5;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/IRS4TAActivity;)Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->alertDialog:Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->form1:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->showPoolTypeDialog()V

    return-void
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->showExPoolDialog()V

    return-void
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    return-object p0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->connect()V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/IRS4TAActivity;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object p0
.end method

.method static synthetic access$1900(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->parseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->classId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2202(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->seqDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->showSeqListDialog()V

    return-void
.end method

.method static synthetic access$2402(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->poolTypeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2502(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->examDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2602(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2700(Ltw/edu/kmu/act/IRS4TAActivity;)[Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolKey:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Ltw/edu/kmu/act/IRS4TAActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolKey:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Ltw/edu/kmu/act/IRS4TAActivity;)[Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolValue:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2802(Ltw/edu/kmu/act/IRS4TAActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolValue:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->subquList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3002(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->subquList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3100(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/HashMap;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getPoolDataView(Ljava/util/HashMap;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentSeqno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Ltw/edu/kmu/act/IRS4TAActivity;)Llecho/lib/hellocharts/view/ColumnChartView;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentPooId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentPooId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPooId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 74
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPooId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/Button;
    .locals 0

    .line 74
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btnDeatil:Landroid/widget/Button;

    return-object p0
.end method

.method private connect()V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltw/edu/kmu/act/IRS4TAActivity$8;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRS4TAActivity$8;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 571
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 20

    move-object/from16 v1, p0

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elements:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elementsData:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 351
    :goto_0
    :try_start_0
    iget-object v2, v1, Ltw/edu/kmu/act/IRS4TAActivity;->poolTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 352
    iget-object v2, v1, Ltw/edu/kmu/act/IRS4TAActivity;->poolTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/HashMap;

    const-string v2, "typeCode"

    .line 353
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const-string v2, "typeDesc"

    .line 354
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 355
    sget-object v2, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "typeDesc is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "subTypeList"

    .line 356
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    .line 357
    new-instance v12, Ltw/edu/kmu/view/TreeElement;

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v11, -0x1

    const-string v2, "null"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    const/16 v17, 0x0

    move-object v2, v12

    move-object v3, v4

    move v10, v14

    move-object v0, v12

    move/from16 v12, v16

    move/from16 v18, v14

    move-object v14, v13

    move/from16 v13, v17

    invoke-direct/range {v2 .. v13}, Ltw/edu/kmu/view/TreeElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 358
    iget-object v2, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v2, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "null"

    .line 360
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "subTypeList"

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 362
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 363
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 364
    new-instance v15, Ltw/edu/kmu/view/TreeElement;

    const-string v5, "typeDesc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "typeDesc"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "typeCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    add-int v13, v18, v3

    invoke-virtual {v0}, Ltw/edu/kmu/view/TreeElement;->getId()I

    move-result v14

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v5, v15

    move-object/from16 v19, v15

    move v15, v4

    invoke-direct/range {v5 .. v16}, Ltw/edu/kmu/view/TreeElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 365
    iget-object v4, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elementsData:Ljava/util/ArrayList;

    move-object/from16 v5, v19

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v18, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const-string v0, "layout_inflater"

    .line 373
    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 374
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08011b

    .line 375
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    const/4 v3, -0x1

    .line 376
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 377
    new-instance v3, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;

    iget-object v4, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elements:Ljava/util/ArrayList;

    iget-object v5, v1, Ltw/edu/kmu/act/IRS4TAActivity;->elementsData:Ljava/util/ArrayList;

    invoke-direct {v3, v1, v4, v5, v0}, Ltw/edu/kmu/adapter/IRSTAPoolTypeTreeViewAdapter;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V

    .line 378
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method

.method private getPoolDataView(Ljava/util/HashMap;)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1314
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1315
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v4, "#FFFFFF"

    .line 1316
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1322
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v0, Ltw/edu/kmu/act/IRS4TAActivity;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x32

    div-int/lit8 v5, v5, 0x64

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1324
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1325
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v5, "questionType"

    .line 1327
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1328
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v8, -0x1000000

    .line 1329
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v10, 0x2

    .line 1330
    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v11, "description"

    .line 1331
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "timer"

    .line 1335
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1336
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x5

    .line 1337
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v12, 0x40a00000    # 5.0f

    .line 1338
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1339
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1340
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1341
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1342
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1345
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v11, :cond_0

    const-string v11, "  Score"

    goto :goto_0

    :cond_0
    const-string v11, "  \u5f97\u5206:"

    :goto_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "scoreDesc"

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0700f6

    .line 1348
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v9, 0x8

    .line 1349
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v7, "imgPath"

    .line 1351
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1352
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1353
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x43160000    # 150.0f

    invoke-static {v0, v13}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x11

    .line 1354
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1355
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Ltw/edu/kmu/act/IRS4TAActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, ""

    .line 1359
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x0

    if-nez v14, :cond_2

    .line 1360
    new-instance v14, Ltw/edu/kmu/act/IRS4TAActivity$18;

    invoke-direct {v14, v0, v7}, Ltw/edu/kmu/act/IRS4TAActivity$18;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    new-instance v14, Ltw/edu/kmu/tool/ImageDownloaderTask;

    const/4 v12, 0x0

    invoke-direct {v14, v9, v12, v0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v12, v10, [Ljava/lang/String;

    aput-object v11, v12, v15

    aput-object v7, v12, v3

    invoke-virtual {v14, v12}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1371
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1372
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1373
    iget-boolean v7, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v7, :cond_1

    const-string v7, "Click image to enlarge"

    goto :goto_1

    :cond_1
    const-string v7, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1375
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1376
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1377
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const-string v3, "2"

    .line 1381
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v7, 0x7f08004f

    const/4 v9, -0x1

    if-eqz v3, :cond_5

    .line 1383
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v5, "radioGroup"

    .line 1384
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 1387
    new-instance v5, Lorg/json/JSONArray;

    const-string v10, "optionList"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 1388
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 1389
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1390
    new-instance v12, Landroid/widget/RadioButton;

    invoke-direct {v12, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1391
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "radioButton"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 1392
    invoke-virtual {v12, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1393
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "optKey"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "optVal"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v13, "optKey"

    .line 1394
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 1395
    invoke-virtual {v12, v15}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v13, "correct"

    .line 1396
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1397
    invoke-virtual {v3, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1400
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1401
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1402
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1403
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1404
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1405
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1406
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1407
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v6, :cond_4

    const-string v6, "My ans:"

    goto :goto_3

    :cond_4
    const-string v6, "\u6211\u7684\u7b54\u6848:"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "myAnswer"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_5
    const-string v3, "3"

    .line 1413
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1416
    new-instance v3, Lorg/json/JSONArray;

    const-string v5, "optionList"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1417
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 1418
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1419
    new-instance v12, Landroid/widget/CheckBox;

    invoke-direct {v12, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1420
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkBox_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1421
    invoke-virtual {v12, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1422
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "optKey"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "optVal"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v13, "optKey"

    .line 1423
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v13, "correct"

    .line 1424
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1425
    invoke-virtual {v12, v15}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1426
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 1428
    :cond_6
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1429
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1430
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1431
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1432
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1433
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1434
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1436
    invoke-virtual {v3, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v6, :cond_7

    const-string v6, "My ans:"

    goto :goto_5

    :cond_7
    const-string v6, "\u6211\u7684\u7b54\u6848:"

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "myAnswer"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_8
    const-string v3, "4"

    .line 1440
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1442
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1443
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40a00000    # 5.0f

    .line 1444
    invoke-static {v0, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1445
    invoke-static {v0, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1446
    invoke-static {v0, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1447
    invoke-static {v0, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1448
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v5, "edit1"

    .line 1450
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1451
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setTextColor(I)V

    const v5, 0x7f0700f5

    .line 1452
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v5, "myAnswer"

    .line 1454
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1457
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1458
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1459
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1460
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1461
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1462
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1463
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v6, :cond_9

    const-string v6, "Right ans:"

    goto :goto_6

    :cond_9
    const-string v6, "\u6a19\u6e96\u7b54\u6848:"

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stdAnswer"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    const-string v6, "stdAnswer"

    .line 1467
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1468
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1472
    :cond_a
    :goto_7
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private initHandler()V
    .locals 1

    .line 577
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$9;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRS4TAActivity$9;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initMqttClient()V
    .locals 4

    .line 493
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_CR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->host:Ljava/lang/String;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v3}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 502
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 504
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 510
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 512
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 514
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    new-instance v1, Ltw/edu/kmu/act/IRS4TAActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRS4TAActivity$7;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initSegmentedGroup()V
    .locals 2

    const v0, 0x7f080190

    .line 386
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/view/SegmentedGroup;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->segGroup:Ltw/edu/kmu/view/SegmentedGroup;

    .line 387
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->segGroup:Ltw/edu/kmu/view/SegmentedGroup;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->listener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f08008c

    .line 389
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button1:Landroid/widget/RadioButton;

    .line 390
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button1:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 391
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button1:Landroid/widget/RadioButton;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btn1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08008d

    .line 392
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button2:Landroid/widget/RadioButton;

    .line 393
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button2:Landroid/widget/RadioButton;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btn1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08008e

    .line 394
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button3:Landroid/widget/RadioButton;

    .line 395
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->button3:Landroid/widget/RadioButton;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btn1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f0800e7

    .line 163
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->form1:Landroid/widget/LinearLayout;

    const v0, 0x7f080096

    .line 164
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/ColumnChartView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    const v0, 0x7f0801c9

    .line 167
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->title1:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    .line 169
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    iget-object v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->title1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->title1:Landroid/widget/TextView;

    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRS4TAActivity$1;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080192

    .line 184
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 185
    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$2;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRS4TAActivity$2;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->initSegmentedGroup()V

    .line 240
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolTypeList;

    invoke-direct {v0, p0, v3}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolTypeList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    const/4 v2, 0x1

    .line 241
    new-array v2, v2, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolTypeList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;

    invoke-direct {v0, p0, v3}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    .line 244
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v0, 0x7f08006c

    .line 247
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btnDeatil:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->btnDeatil:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private parseMsg(Ljava/lang/String;)V
    .locals 5

    .line 605
    sget-object v0, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseMsg start inputMsgType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msgType"

    .line 608
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    sget-object v2, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMsg start msgType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "2"

    .line 611
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentType:Ljava/lang/String;

    const-string v2, "99"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f080226

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 614
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b54\u984c\u4eba\u6578:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/IRS4TAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 618
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->parseSeqList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 620
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->setChartData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setChartData(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1619
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 1625
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "ansCount"

    .line 1626
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 1627
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_0

    .line 1629
    new-instance v10, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-static {}, Llecho/lib/hellocharts/util/ChartUtils;->pickColor()I

    move-result v11

    invoke-direct {v10, v7, v11}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    .line 1630
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1633
    :cond_0
    new-instance v7, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v7, v8}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 1634
    invoke-virtual {v7, v5}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 1635
    invoke-virtual {v7, v3}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 1636
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v7, v4

    invoke-direct {v5, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    const-string v7, "ansDesc"

    .line 1639
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    .line 1640
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1644
    :cond_1
    new-instance p1, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {p1, v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Ljava/util/List;)V

    .line 1646
    iget-boolean v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->hasAxes:Z

    if-eqz v0, :cond_2

    .line 1647
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    .line 1648
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const-string v2, "\u7b54\u6848"

    .line 1649
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setName(Ljava/lang/String;)Llecho/lib/hellocharts/model/Axis;

    const-string v2, "\u4f5c\u7b54\u4eba\u6578"

    .line 1650
    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setName(Ljava/lang/String;)Llecho/lib/hellocharts/model/Axis;

    const/high16 v2, -0x1000000

    .line 1651
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    const v4, -0xffff01

    .line 1652
    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1654
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1655
    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1658
    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 1659
    invoke-virtual {p1, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1661
    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 1662
    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 1664
    :goto_2
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void
.end method

.method private setChartDemoData(Llecho/lib/hellocharts/view/ColumnChartView;)V
    .locals 10

    .line 1674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    .line 1679
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    .line 1681
    new-instance v7, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x42480000    # 50.0f

    mul-float v8, v8, v9

    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v8, v9

    invoke-static {}, Llecho/lib/hellocharts/util/ChartUtils;->pickColor()I

    move-result v9

    invoke-direct {v7, v8, v9}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1684
    :cond_0
    new-instance v6, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v6, v5}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 1685
    invoke-virtual {v6, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 1686
    invoke-virtual {v6, v2}, Llecho/lib/hellocharts/model/Column;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Column;

    .line 1687
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1689
    new-instance v4, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v5, v3

    invoke-direct {v4, v5}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F)V

    .line 1690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/model/AxisValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/AxisValue;

    .line 1691
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1695
    :cond_1
    new-instance v3, Llecho/lib/hellocharts/model/ColumnChartData;

    invoke-direct {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Ljava/util/List;)V

    .line 1697
    iget-boolean v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->hasAxes:Z

    if-eqz v0, :cond_2

    .line 1698
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    .line 1699
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const-string v4, "\u7b54\u6848"

    .line 1700
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setName(Ljava/lang/String;)Llecho/lib/hellocharts/model/Axis;

    const-string v4, "\u4f5c\u7b54\u4eba\u6578"

    .line 1701
    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setName(Ljava/lang/String;)Llecho/lib/hellocharts/model/Axis;

    const/high16 v4, -0x1000000

    .line 1702
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    const v5, -0xffff01

    .line 1703
    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1705
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1706
    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    .line 1707
    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 1708
    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1710
    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 1711
    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 1713
    :goto_2
    invoke-virtual {p1, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 1714
    invoke-virtual {p1, v3}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    return-void
.end method

.method private showExPoolDialog()V
    .locals 10

    .line 932
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "title1"

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Q:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "description"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title3"

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "score"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5206"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 938
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentLocale:Ljava/lang/String;

    const-string v3, "en"

    .line 939
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v2, "\u9078\u64c7\u8a66\u5377"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Ltw/edu/kmu/act/IRS4TAActivity$13;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/IRS4TAActivity$13;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    .line 940
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080122

    .line 950
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 951
    new-instance v8, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/IRS4TAActivity;->exPoolList:Ljava/util/ArrayList;

    const v5, 0x7f0a0077

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "title1"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v9, "createTime"

    aput-object v9, v6, v7

    const/4 v7, 0x2

    const-string v9, "title3"

    aput-object v9, v6, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 957
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 958
    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$14;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/act/IRS4TAActivity$14;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 973
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801c9
        0x7f0801dc
        0x7f080202
    .end array-data
.end method

.method private showPoolTypeDialog()V
    .locals 3

    .line 315
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->poolTypeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->poolTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    iget-boolean v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    const-string v1, "\u9078\u64c7\u984c\u5eab\u985e\u5225/\u984c\u76ee"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    .line 330
    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRS4TAActivity$3;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4PoolType:Landroid/app/AlertDialog;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private showSeqListDialog()V
    .locals 9

    .line 685
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 686
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "IRS"

    .line 687
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Cancel"

    goto :goto_0

    :cond_0
    const-string v2, "\u53d6\u6d88"

    :goto_0
    new-instance v3, Ltw/edu/kmu/act/IRS4TAActivity$10;

    invoke-direct {v3, p0}, Ltw/edu/kmu/act/IRS4TAActivity$10;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    .line 688
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f080122

    .line 698
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 699
    new-instance v8, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/IRS4TAActivity;->seqDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a007d

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "title11"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "title12"

    aput-object v7, v6, v3

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/IRSTAStuListViewAdapter;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 705
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$11;

    invoke-direct {v2, p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity$11;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 715
    iput-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4SeqNo:Landroid/app/AlertDialog;

    .line 716
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4SeqNo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method

.method private startReconnect()V
    .locals 8

    .line 474
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 475
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$6;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRS4TAActivity$6;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0078

    return v0
.end method

.method public getPoolData(Ljava/lang/String;I)V
    .locals 3

    .line 272
    sget-object v0, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4PoolType:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4PoolType:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    :cond_0
    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    const/4 v1, 0x2

    .line 279
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity$GetPoolDataList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->bundle:Landroid/os/Bundle;

    const p1, 0x7f0c00da

    .line 132
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->classId:Ljava/lang/String;

    .line 139
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userID:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userType:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userName:Ljava/lang/String;

    const-string p1, "\u5b78\u751f"

    .line 145
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->ansUserId:Ljava/lang/String;

    const-string p1, "\u5b78\u751f"

    .line 146
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6e2c\u8a66\u5e33\u865f("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->ansUserName:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->initView()V

    .line 150
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->initHandler()V

    .line 152
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->initMqttClient()V

    .line 154
    invoke-direct {p0}, Ltw/edu/kmu/act/IRS4TAActivity;->startReconnect()V

    .line 156
    new-instance p1, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V

    const/4 v0, 0x0

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity$CheckBtClassRoom;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1731
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 1733
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1734
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V

    .line 1735
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->close()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1737
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1719
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1721
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1726
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1744
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 1745
    sget-object v0, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parseSeqList(Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 742
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 743
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 744
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 745
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 746
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 747
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 748
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 749
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 750
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 752
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 758
    sget-object v1, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

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

.method public scrollToEnd()V
    .locals 4

    .line 723
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4SeqNo:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 725
    move-object v1, v0

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleAdapter;

    .line 726
    new-instance v3, Ltw/edu/kmu/act/IRS4TAActivity$12;

    invoke-direct {v3, p0, v0, v2}, Ltw/edu/kmu/act/IRS4TAActivity$12;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Landroid/view/View;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_0
    sget-object v1, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSeqNo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 632
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->title1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->currentSeqno:Ljava/lang/String;

    .line 634
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->dialog4SeqNo:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public show99View()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1058
    new-instance v1, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;

    invoke-direct {v1, v0}, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    .line 1060
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 1061
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v4, "#FFFFFF"

    .line 1062
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1064
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1065
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x7f0700f4

    .line 1066
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1091
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1092
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v0, Ltw/edu/kmu/act/IRS4TAActivity;->display:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x32

    div-int/lit8 v6, v6, 0x64

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    .line 1116
    :goto_0
    iget-object v8, v0, Ltw/edu/kmu/act/IRS4TAActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 1117
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1118
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1119
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1120
    iget-object v10, v0, Ltw/edu/kmu/act/IRS4TAActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v11, "questionType"

    .line 1121
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1122
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, -0x1000000

    .line 1123
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v14, 0x41900000    # 18.0f

    const/4 v15, 0x2

    .line 1124
    invoke-virtual {v12, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "description"

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1128
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 1129
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1130
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x5

    .line 1131
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v12, 0x40a00000    # 5.0f

    .line 1132
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1133
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1134
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1135
    invoke-static {v0, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1136
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    invoke-virtual {v3, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1139
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1140
    iget-boolean v4, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    const-string v4, "\u9078\u64c7\u984c\u76ee"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0700f6

    .line 1142
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1143
    new-instance v4, Ltw/edu/kmu/act/IRS4TAActivity$15;

    invoke-direct {v4, v0, v1, v10}, Ltw/edu/kmu/act/IRS4TAActivity$15;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "imgPath"

    .line 1162
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1163
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1164
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x43160000    # 150.0f

    invoke-static {v0, v14}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-direct {v5, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 1165
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1166
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Ltw/edu/kmu/act/IRS4TAActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, ""

    .line 1170
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1171
    new-instance v12, Ltw/edu/kmu/act/IRS4TAActivity$16;

    invoke-direct {v12, v0, v3}, Ltw/edu/kmu/act/IRS4TAActivity$16;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    new-instance v12, Ltw/edu/kmu/tool/ImageDownloaderTask;

    const/4 v14, 0x0

    invoke-direct {v12, v4, v14, v0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v14, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v5, v14, v16

    const/4 v5, 0x1

    aput-object v3, v14, v5

    invoke-virtual {v12, v14}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1182
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1183
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1184
    iget-boolean v4, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v4, :cond_0

    const-string v4, "Click image to enlarge"

    goto :goto_1

    :cond_0
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x11

    .line 1187
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1188
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    :goto_2
    const-string v3, "2"

    .line 1192
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f08004f

    if-eqz v3, :cond_4

    .line 1194
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1195
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "radioGroup"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 1198
    new-instance v6, Lorg/json/JSONArray;

    const-string v11, "optionList"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v6, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1199
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1200
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1201
    new-instance v14, Landroid/widget/RadioButton;

    invoke-direct {v14, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1202
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radioButton"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 1203
    invoke-virtual {v14, v13}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "optKey"

    .line 1205
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    const/4 v5, 0x0

    .line 1206
    invoke-virtual {v14, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v5, "correct"

    .line 1207
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v14, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1208
    invoke-virtual {v3, v14}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/4 v5, 0x1

    goto :goto_3

    .line 1211
    :cond_2
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1212
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1213
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 1214
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1215
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1216
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1217
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1218
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v5, :cond_3

    const-string v5, "My ans:"

    goto :goto_4

    :cond_3
    const-string v5, "\u6211\u7684\u7b54\u6848:"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "myAnswer"

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_4
    const-string v3, "3"

    .line 1224
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1227
    new-instance v3, Lorg/json/JSONArray;

    const-string v5, "optionList"

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1228
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 1229
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1230
    new-instance v12, Landroid/widget/CheckBox;

    invoke-direct {v12, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1231
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v14, "optKey"

    .line 1234
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v4, v14}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v14, "correct"

    .line 1235
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v11, 0x0

    .line 1236
    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1237
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v15, 0x2

    goto :goto_5

    .line 1239
    :cond_5
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1240
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 1241
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1242
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1243
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1244
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1245
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x2

    .line 1247
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v5, :cond_6

    const-string v5, "My ans:"

    goto :goto_6

    :cond_6
    const-string v5, "\u6211\u7684\u7b54\u6848:"

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "myAnswer"

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_7
    const-string v3, "4"

    .line 1251
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1253
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1254
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 1255
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1256
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1257
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1258
    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1259
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 1260
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v5, "edit1"

    .line 1261
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setTextColor(I)V

    const v5, 0x7f0700f5

    .line 1263
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v5, "myAnswer"

    .line 1265
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1268
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1269
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1270
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1271
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1272
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1273
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1274
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/IRS4TAActivity;->isEnglish:Z

    if-eqz v6, :cond_8

    const-string v6, "Right ans:"

    goto :goto_7

    :cond_8
    const-string v6, "\u6a19\u6e96\u7b54\u6848:"

    :goto_7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stdAnswer"

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, ""

    const-string v6, "stdAnswer"

    .line 1278
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1279
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v4, 0x0

    .line 1283
    :cond_a
    :goto_9
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v6, v9

    const/4 v3, 0x1

    const v5, 0x7f0700f4

    goto/16 :goto_0

    .line 1286
    :cond_b
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1287
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1288
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1290
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1291
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1293
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700f3

    .line 1294
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1295
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    .line 1296
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1297
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-string v4, "99"

    .line 1301
    invoke-virtual {v1, v0, v2, v4}, Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 1302
    new-instance v2, Ltw/edu/kmu/act/IRS4TAActivity$17;

    invoke-direct {v2, v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity$17;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$ViewDialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showExPoolView(Ljava/lang/String;)V
    .locals 7

    .line 1038
    sget-object v0, Ltw/edu/kmu/act/IRS4TAActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subquList size is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/IRS4TAActivity;->subquList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1041
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v1, -0x1000000

    .line 1042
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x2

    .line 1043
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1044
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1046
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity;->subquList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1047
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1048
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1050
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subQuOrder"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "description"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
