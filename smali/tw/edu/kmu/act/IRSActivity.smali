.class public Ltw/edu/kmu/act/IRSActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "IRSActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentQu;,
        Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;,
        Ltw/edu/kmu/act/IRSActivity$SendData4Type99;,
        Ltw/edu/kmu/act/IRSActivity$ViewDialog;,
        Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;,
        Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;,
        Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSActivity"


# instance fields
.field private aHandler:Landroid/os/Handler;

.field private alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

.field private alertView:Landroid/widget/LinearLayout;

.field private ansUserId:Ljava/lang/String;

.field private ansUserName:Ljava/lang/String;

.field private bar1:Landroid/widget/ImageView;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn21:Landroid/widget/Button;

.field private btn22:Landroid/widget/Button;

.field private btn23:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private btn4:Landroid/widget/Button;

.field private btn5:Landroid/widget/Button;

.field private btnSend:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private checkbox1:Landroid/widget/CheckBox;

.field private classId:Ljava/lang/String;

.field private client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field private countTimeTitle:Landroid/widget/TextView;

.field private ctEndTime:Ljava/lang/String;

.field private ctHandler:Landroid/os/Handler;

.field private ctPeriodCount:I

.field final ctRunnable:Ljava/lang/Runnable;

.field private ctServerTime:Ljava/lang/String;

.field private currentEType:Ljava/lang/String;

.field private currentSeqno:Ljava/lang/String;

.field private currentType:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private form1:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private host:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private img_status:Landroid/widget/TextView;

.field private normalTopic:Ljava/lang/String;

.field private options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private periodCount:I

.field private phoneTimeDiff:J

.field private quickCountTime:Landroid/widget/TextView;

.field private quickModeQuestionId:Ljava/lang/String;

.field private quickTopic:Ljava/lang/String;

.field private quickbtn:Landroid/widget/Button;

.field private quid:Ljava/lang/String;

.field private regId:Ljava/lang/String;

.field private root:Landroid/widget/RelativeLayout;

.field private root11:Landroid/widget/LinearLayout;

.field private root2:Landroid/widget/LinearLayout;

.field private root21:Landroid/widget/LinearLayout;

.field private rootView:Landroid/widget/LinearLayout;

.field final runnable:Ljava/lang/Runnable;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private scrollView:Landroid/widget/ScrollView;

.field private secno:Ljava/lang/String;

.field private stuQuEdit:Landroid/widget/EditText;

.field private teacherNo:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "tcp://mbms.kmu.edu.tw:1883"

    .line 68
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->host:Ljava/lang/String;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickTopic:Ljava/lang/String;

    const-string v0, ""

    .line 76
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->normalTopic:Ljava/lang/String;

    const-string v0, "1"

    .line 78
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    const-string v0, "123456"

    .line 80
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    const-string v0, ""

    .line 82
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->currentSeqno:Ljava/lang/String;

    const-string v0, "https://mbms.kmu.edu.tw:443/KmuIrs/file.serv?fileID="

    .line 105
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 109
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    const-string v0, ""

    .line 126
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->regId:Ljava/lang/String;

    const-string v0, ""

    .line 128
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    const-string v0, ""

    .line 132
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    .line 2305
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$31;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$31;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    .line 2367
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$32;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$32;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->secno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->secno:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 0

    .line 62
    iget p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return p0
.end method

.method static synthetic access$1402(Ltw/edu/kmu/act/IRSActivity;I)I
    .locals 0

    .line 62
    iput p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return p1
.end method

.method static synthetic access$1410(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 2

    .line 62
    iget v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return v0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1502(Ltw/edu/kmu/act/IRSActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->submitPaperFillData()V

    return-void
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->parseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    return-object p0
.end method

.method static synthetic access$2400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->img_status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickTopic:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->normalTopic:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    return-void
.end method

.method static synthetic access$3800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    return-object p0
.end method

.method static synthetic access$4000(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4400(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->sendQuickAns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->stuQuEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->checkbox1:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$4700(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4800(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 0

    .line 62
    iget p0, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    return p0
.end method

.method static synthetic access$4810(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 2

    .line 62
    iget v0, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    return v0
.end method

.method static synthetic access$4900(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->connect()V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctEndTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctEndTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctServerTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctServerTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ltw/edu/kmu/act/IRSActivity;J)J
    .locals 0

    .line 62
    iput-wide p1, p0, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    return-wide p1
.end method

.method private connect()V
    .locals 2

    .line 2494
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$35;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$35;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2512
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hideQuickMode()V
    .locals 2

    .line 297
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->bar1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 2433
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2435
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2440
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->host:Ljava/lang/String;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v3}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 2442
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 2444
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 2450
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 2452
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 2454
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$34;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$34;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initBtn()V
    .locals 3

    const v0, 0x7f08015e

    .line 769
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    .line 770
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080160

    .line 772
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    .line 773
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$7;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080051

    .line 784
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    .line 785
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 786
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 788
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$8;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$8;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005b

    .line 797
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    .line 798
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 799
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 801
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$9;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$9;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080060

    .line 810
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    .line 811
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 812
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 814
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$10;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$10;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080061

    .line 823
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    .line 824
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 825
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 827
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$11;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$11;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    .line 836
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    .line 837
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 838
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    const-string v2, "5"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 840
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$12;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$12;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 850
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 851
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 852
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 854
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0800a2

    .line 858
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->checkbox1:Landroid/widget/CheckBox;

    const v0, 0x7f08005d

    .line 861
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    .line 862
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "The pace is too fast."

    goto :goto_0

    :cond_0
    const-string v1, "\u8001\u5e2b,\u60a8\u7684\u8b1b\u8ab2\u901f\u5ea6\u592a\u5feb\u4e86!!"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    const-string v1, "#62AFE2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 864
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$13;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$13;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005e

    .line 926
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    .line 927
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "I don\u2019t understand this part."

    goto :goto_1

    :cond_1
    const-string v1, "\u8001\u5e2b,\u6211\u4e0d\u61c2\u9019\u90e8\u4efd\u7684\u5167\u5bb9!!"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    const-string v1, "#62AFE2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 929
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$14;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$14;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005f

    .line 988
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    .line 991
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$15;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$15;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initEditView()V
    .locals 6

    const v0, 0x7f0800b1

    .line 526
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 528
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 529
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 530
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 535
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0801d5

    .line 536
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 541
    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    .line 542
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 543
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 544
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 545
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 546
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 547
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    const-string v2, "#F89022"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 549
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    iget-boolean v2, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Submit"

    goto :goto_1

    :cond_1
    const-string v2, "\u9001\u51fa"

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 551
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$3;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f080062

    .line 582
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 583
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$4;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080063

    .line 596
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 598
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$5;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801b3

    .line 610
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->stuQuEdit:Landroid/widget/EditText;

    return-void
.end method

.method private initFuncBtn()V
    .locals 4

    const v0, 0x7f08003f

    .line 223
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 224
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 225
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 226
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "#FFFFFF"

    .line 230
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Answer/question history"

    goto :goto_0

    :cond_0
    const-string v1, "\u4f5c\u7b54/\u63d0\u554f\u8a18\u9304"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$1;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006e

    .line 246
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 247
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$2;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 617
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$6;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$6;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initQuickLy()V
    .locals 1

    const v0, 0x7f080177

    .line 289
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const v0, 0x7f080178

    .line 290
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    const v0, 0x7f080179

    .line 291
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    const v0, 0x7f080030

    .line 292
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->bar1:Landroid/widget/ImageView;

    return-void
.end method

.method private parseMsg(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    .line 1110
    sget-object v2, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMsg start inputMsgType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msgType"

    .line 1114
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "4"

    .line 1115
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    const-string v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Completed"

    goto :goto_0

    :cond_0
    const-string v2, "\u4f5c\u7b54\u5b8c\u6210\uff0c\u6559\u5e2b\u5df2\u6536\u5230\u60a8\u7684\u7b54\u6848\uff01"

    .line 1118
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "OK"

    goto :goto_1

    :cond_1
    const-string v2, "\u78ba\u5b9a"

    :goto_1
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$17;

    invoke-direct {v3, v7}, Ltw/edu/kmu/act/IRSActivity$17;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    .line 1119
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1123
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    const-string v3, "question"

    .line 1127
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->endTime:Ljava/lang/String;

    const-string v3, "question"

    .line 1128
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "period"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "question"

    .line 1131
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "seqList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1139
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->currentSeqno:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "\u5b78\u751f"

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const-string v3, "question"

    .line 1147
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "assignStuList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 1151
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 1152
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "stuNo"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1156
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-nez v9, :cond_6

    .line 1157
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInAssignStuList is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1166
    :cond_6
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneTimeDiff is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->endTime:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ltw/edu/kmu/act/IRSActivity;->dateDiff(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    .line 1169
    div-long v11, v9, v11

    iget-wide v13, v7, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    const/4 v3, 0x0

    sub-long/2addr v11, v13

    .line 1170
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "diff is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "diffSeconds is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x0

    cmp-long v3, v11, v9

    if-gez v3, :cond_7

    .line 1176
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v2, "time is up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1181
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v3, v6, :cond_8

    .line 1182
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    goto :goto_3

    .line 1184
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    .line 1186
    :goto_3
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseMsg periodCount is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    if-eqz v3, :cond_9

    .line 1189
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1192
    :cond_9
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    .line 1193
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v3, "0"

    .line 1196
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "question"

    .line 1197
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "question"

    .line 1199
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "question"

    .line 1200
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    const-string v1, "1"

    .line 1203
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v1, :cond_e

    const-string v1, "\u5feb\u554f\u5feb\u7b54"

    .line 1205
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    const-string v1, "Quick Quiz"

    .line 1206
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    .line 1208
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, ""

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1210
    sget-object v2, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Replied"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7d93\u7b54\u904e\u4e86"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_5
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1215
    :cond_b
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->showQuickMode()V

    .line 1217
    iput-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    .line 1219
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u5feb\u554f\u5feb\u7b54  start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quick_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "msgType"

    const-string v13, "98"

    .line 1222
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "userId"

    .line 1223
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "questionId"

    .line 1224
    invoke-virtual {v2, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "os"

    const-string v13, "android"

    .line 1225
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "version"

    .line 1226
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v13, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "token"

    .line 1227
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v13, v13, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "device"

    .line 1228
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    new-array v12, v4, [B

    const-string v12, "UTF-8"

    .line 1231
    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 1232
    new-instance v13, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v13, v12}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1236
    new-instance v12, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    invoke-direct {v12, v7, v10}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 1237
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    aput-object v6, v3, v11

    const/4 v1, 0x3

    const-string v2, "98"

    aput-object v2, v3, v1

    invoke-virtual {v12, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1238
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1239
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1240
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1241
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1242
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1243
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_c

    const-string v2, "Quick Quiz Start"

    goto :goto_6

    :cond_c
    const-string v2, "\u5feb\u554f\u5feb\u7b54\u5df2\u958b\u59cb,\u8acb\u4f5c\u7b54"

    .line 1246
    :goto_6
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_d

    const-string v2, "OK"

    goto :goto_7

    :cond_d
    const-string v2, "\u78ba\u5b9a"

    :goto_7
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$18;

    invoke-direct {v3, v7}, Ltw/edu/kmu/act/IRSActivity$18;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    .line 1247
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1251
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_21

    :cond_e
    const-string v1, "2"

    .line 1253
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, -0x2

    const/4 v13, -0x1

    if-nez v1, :cond_1c

    const-string v1, "3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "4"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_12

    :cond_f
    const-string v1, "99"

    .line 1932
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1934
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, ""

    invoke-interface {v1, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, ""

    .line 1935
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1936
    sget-object v2, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Replied"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7d93\u7b54\u904e\u4e86"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :goto_9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1943
    :cond_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "msgType"

    const-string v14, "98"

    .line 1944
    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "userId"

    .line 1945
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "questionId"

    .line 1946
    invoke-virtual {v1, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "os"

    const-string v14, "android"

    .line 1947
    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "version"

    .line 1948
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v14, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "token"

    .line 1949
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v14, v14, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "device"

    .line 1950
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1951
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1952
    new-array v12, v4, [B

    const-string v12, "UTF-8"

    .line 1953
    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 1954
    new-instance v14, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v14, v12}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1959
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    .line 1960
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1961
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const-string v14, "#1980E0"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1963
    new-instance v12, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    invoke-direct {v12, v7, v10}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 1964
    new-array v14, v3, [Ljava/lang/String;

    aput-object v6, v14, v4

    aput-object v1, v14, v5

    aput-object v6, v14, v11

    const/4 v1, 0x3

    const-string v16, "98"

    aput-object v16, v14, v1

    invoke-virtual {v12, v14}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1965
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1966
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1967
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v12, "#1980E0"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1969
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1970
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1972
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x11

    .line 1973
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v12, 0x41200000    # 10.0f

    .line 1974
    invoke-static {v7, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    .line 1975
    invoke-virtual {v1, v4, v12, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v12, "timer"

    .line 1976
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1977
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 1978
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1983
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1984
    sget-object v12, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v12, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 1985
    invoke-virtual {v1, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1986
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v12, "00:00:00"

    .line 1987
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, -0x777778

    .line 1988
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1989
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1991
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1992
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41c00000    # 24.0f

    .line 1993
    invoke-virtual {v1, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v12, "question"

    .line 1994
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "description"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1997
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subQuList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v1, 0x0

    .line 1998
    :goto_a
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1999
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v14, "subQuOrder"

    .line 2000
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v14, "questionType"

    .line 2001
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2002
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2003
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41a00000    # 20.0f

    .line 2004
    invoke-virtual {v3, v11, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2005
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2006
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "imgPath"

    .line 2008
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2009
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2010
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x43160000    # 150.0f

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v13, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 2011
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2012
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2013
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2014
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "imgFile"

    .line 2015
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, ""

    .line 2016
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2019
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$28;

    invoke-direct {v3, v7, v11}, Ltw/edu/kmu/act/IRSActivity$28;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2030
    new-instance v3, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v15, 0x0

    invoke-direct {v3, v4, v15, v13}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v15, v13

    const/4 v10, 0x1

    aput-object v11, v15, v10

    invoke-virtual {v3, v15}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2031
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2032
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2033
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_12

    const-string v4, "Click image to enlarge"

    goto :goto_b

    :cond_12
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 2034
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2035
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 2036
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2037
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2038
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_13
    const-string v3, "2"

    .line 2041
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2043
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v7}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 2044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radioGroup"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v1, "optionList"

    .line 2047
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2048
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 2049
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2050
    new-instance v10, Landroid/widget/RadioButton;

    invoke-direct {v10, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 2051
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "radioButton"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v11, -0x1

    .line 2052
    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2053
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "optKey"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "optVal"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "optKey"

    .line 2054
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v11, 0x7f08004e

    invoke-virtual {v10, v11, v4}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 2055
    invoke-virtual {v3, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 2058
    :cond_14
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_15
    const-string v3, "3"

    .line 2062
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "optionList"

    .line 2065
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2066
    :goto_d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 2067
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2068
    new-instance v10, Landroid/widget/CheckBox;

    invoke-direct {v10, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 2069
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkBox"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v11, -0x1

    .line 2070
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2071
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "optKey"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "optVal"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "optKey"

    .line 2072
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v11, 0x7f08004e

    invoke-virtual {v10, v11, v4}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 2073
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_16
    const-string v2, "4"

    .line 2077
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2079
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2081
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    const/4 v4, -0x1

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 2082
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2083
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2084
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2085
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2086
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v1, -0x1000000

    .line 2088
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v1, -0x1

    .line 2089
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 2090
    iget-boolean v1, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_17

    const-string v1, "Please answer"

    goto :goto_e

    :cond_17
    const-string v1, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2091
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_18
    :goto_f
    move v1, v5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v13, -0x1

    const/4 v15, -0x2

    goto/16 :goto_a

    .line 2097
    :cond_19
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004e

    .line 2098
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 2099
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_1a

    const-string v2, "Cancel"

    goto :goto_10

    :cond_1a
    const-string v2, "\u53d6\u6d88"

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 2100
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 2101
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2102
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x23

    div-int/lit8 v3, v3, 0x64

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 2103
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 2104
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2105
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2106
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2107
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2108
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2109
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08005b

    .line 2110
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setId(I)V

    .line 2111
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_1b

    const-string v3, "OK"

    goto :goto_11

    :cond_1b
    const-string v3, "\u78ba\u5b9a"

    :goto_11
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 2112
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x7f0700f2

    .line 2113
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 2114
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 2115
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2116
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 2117
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2118
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2119
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2120
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2121
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v3, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 2122
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    .line 2123
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2124
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2125
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v3, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 2126
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2127
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$29;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$29;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2137
    new-instance v11, Ltw/edu/kmu/act/IRSActivity$30;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/act/IRSActivity$30;-><init>(Ltw/edu/kmu/act/IRSActivity;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_21

    :cond_1c
    :goto_12
    const-string v1, "\u4e00\u822c\u51fa\u984c"

    .line 1255
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    const-string v1, "Quiz"

    .line 1256
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    .line 1257
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 1258
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1259
    sget-object v2, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Replied"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u7d93\u7b54\u904e\u4e86"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :goto_14
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1267
    :cond_1e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "msgType"

    const-string v4, "98"

    .line 1268
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "userId"

    .line 1269
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "questionId"

    .line 1270
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "android"

    .line 1271
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 1272
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v4, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "token"

    .line 1273
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    .line 1274
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1276
    new-array v4, v3, [B

    const-string v3, "UTF-8"

    .line 1277
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1278
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1282
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v4, 0x4

    .line 1283
    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v5, v4

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string v4, "98"

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1284
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    if-eqz v1, :cond_1f

    .line 1285
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-virtual {v1}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->dismiss()V

    .line 1288
    :cond_1f
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    .line 1289
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1290
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v1, "2"

    .line 1292
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1295
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1296
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1297
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1299
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1300
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1303
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1304
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1305
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1306
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1307
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1308
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1313
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1314
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1315
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1316
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1317
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1318
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1319
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1321
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1322
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1323
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "question"

    .line 1324
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1325
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1327
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1328
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1329
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v10, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1330
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1331
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1334
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "imgFile"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    .line 1335
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1336
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$19;

    invoke-direct {v1, v7, v5}, Ltw/edu/kmu/act/IRSActivity$19;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    new-instance v1, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v3, v11, v10}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v5, v10, v4

    invoke-virtual {v1, v10}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1348
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1349
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1350
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_20

    const-string v3, "Click image to enlarge"

    goto :goto_15

    :cond_20
    const-string v3, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 1351
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1353
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1354
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1358
    :cond_21
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v7}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v1, "radioGroup"

    .line 1359
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v1, "question"

    .line 1362
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "optionList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1363
    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 1364
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1365
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1366
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioButton"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v10, -0x1

    .line 1367
    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1368
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "optKey"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "optVal"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "optKey"

    .line 1369
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v10, 0x7f08004e

    invoke-virtual {v5, v10, v4}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 1370
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_16

    .line 1373
    :cond_22
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1374
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004e

    .line 1375
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1376
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_23

    const-string v2, "Cancel"

    goto :goto_17

    :cond_23
    const-string v2, "\u53d6\u6d88"

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1377
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1378
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1379
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x23

    div-int/lit8 v4, v4, 0x64

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    .line 1380
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1381
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1382
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1383
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1384
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1385
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005b

    .line 1387
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setId(I)V

    .line 1388
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_24

    const-string v4, "OK"

    goto :goto_18

    :cond_24
    const-string v4, "\u78ba\u5b9a"

    :goto_18
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1389
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1390
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1391
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1392
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1394
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1395
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1396
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1397
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1398
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1399
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1400
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1401
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1402
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1403
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$20;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$20;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    new-instance v11, Ltw/edu/kmu/act/IRSActivity$21;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/act/IRSActivity$21;-><init>(Ltw/edu/kmu/act/IRSActivity;Landroid/widget/RadioGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_21

    :cond_25
    const-string v1, "3"

    .line 1505
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1507
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1508
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1509
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1511
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1512
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1514
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1515
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1516
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1517
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1518
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1519
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1520
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1525
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1527
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1528
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1529
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1530
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1531
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1533
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 1534
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1535
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "question"

    .line 1536
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1539
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1541
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v10, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1542
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1543
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1546
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "imgFile"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    .line 1547
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1550
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$22;

    invoke-direct {v1, v7, v5}, Ltw/edu/kmu/act/IRSActivity$22;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1561
    new-instance v1, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v3, v11, v10}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v5, v10, v4

    invoke-virtual {v1, v10}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1562
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1563
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1564
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_26

    const-string v3, "Click image to enlarge"

    goto :goto_19

    :cond_26
    const-string v3, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_19
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 1565
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1566
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1567
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1568
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1569
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_27
    const-string v1, "question"

    .line 1573
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "optionList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    .line 1574
    :goto_1a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1575
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1576
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBox"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v5, -0x1

    .line 1578
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "optKey"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "optVal"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "optKey"

    .line 1580
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08004e

    invoke-virtual {v4, v5, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 1581
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1a

    .line 1583
    :cond_28
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004e

    .line 1584
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1585
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_29

    const-string v2, "Cancel"

    goto :goto_1b

    :cond_29
    const-string v2, "\u53d6\u6d88"

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1586
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1587
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1588
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x23

    div-int/lit8 v4, v4, 0x64

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    .line 1589
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1590
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1591
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1592
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1593
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1594
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005b

    .line 1596
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setId(I)V

    .line 1597
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_2a

    const-string v4, "OK"

    goto :goto_1c

    :cond_2a
    const-string v4, "\u78ba\u5b9a"

    :goto_1c
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1598
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1599
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1600
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1601
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1603
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1604
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1605
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1606
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1607
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1608
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1609
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1610
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1611
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1612
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$23;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$23;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1622
    new-instance v11, Ltw/edu/kmu/act/IRSActivity$24;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v4, v9

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Ltw/edu/kmu/act/IRSActivity$24;-><init>(Ltw/edu/kmu/act/IRSActivity;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_21

    :cond_2b
    const-string v1, "4"

    .line 1729
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1731
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1732
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1733
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1735
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1736
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1738
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1739
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1740
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1742
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1743
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1744
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1749
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1751
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1752
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1753
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1754
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1755
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1757
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 1758
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1759
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "question"

    .line 1760
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1763
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1764
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1765
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    const/4 v5, -0x2

    invoke-direct {v4, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1766
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1767
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1768
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1770
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgFile"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    .line 1771
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1774
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$25;

    invoke-direct {v1, v7, v2}, Ltw/edu/kmu/act/IRSActivity$25;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    new-instance v1, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    invoke-direct {v1, v3, v10, v5}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v5, v10

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-virtual {v1, v5}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1786
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1787
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1788
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2c

    const-string v2, "Click image to enlarge"

    goto :goto_1d

    :cond_2c
    const-string v2, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1789
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1790
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1791
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1792
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1796
    :cond_2d
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1798
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1799
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1800
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1801
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1802
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1803
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "edit1"

    .line 1804
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v2, -0x1000000

    .line 1805
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v2, -0x1

    .line 1806
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 1807
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2e

    const-string v2, "Please answer"

    goto :goto_1e

    :cond_2e
    const-string v2, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1808
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1810
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004e

    .line 1811
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1812
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2f

    const-string v2, "Cancel"

    goto :goto_1f

    :cond_2f
    const-string v2, "\u53d6\u6d88"

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1813
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1814
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1815
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->display:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x23

    div-int/lit8 v3, v3, 0x64

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1816
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1817
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1818
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1819
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1820
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1821
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005b

    .line 1823
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 1824
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_30

    const-string v4, "OK"

    goto :goto_20

    :cond_30
    const-string v4, "\u78ba\u5b9a"

    :goto_20
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1825
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1826
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1827
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1828
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1829
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1830
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1831
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1832
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1833
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1834
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1835
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1836
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1837
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1838
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1839
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$26;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$26;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1849
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$27;

    invoke-direct {v1, v7, v9, v6, v6}, Ltw/edu/kmu/act/IRSActivity$27;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2262
    :cond_31
    :goto_21
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "questionType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " endTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " period is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_22
    return-void
.end method

.method private sendQuickAns(Ljava/lang/String;)V
    .locals 4

    .line 737
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quick_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "msgType"

    const-string v3, "1"

    .line 739
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "questionType"

    const-string v3, "1"

    .line 740
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userId"

    .line 741
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userName"

    .line 742
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "answer"

    .line 743
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 746
    new-array v2, v1, [B

    const-string v2, "UTF-8"

    .line 747
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 748
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 752
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v3, 0x3

    .line 753
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    aput-object v0, v3, p1

    invoke-virtual {v2, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 755
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    .line 756
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 759
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQuickAns error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 764
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showQuickMode()V
    .locals 2

    .line 306
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->bar1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startReconnect()V
    .locals 8

    .line 2412
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2413
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$33;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$33;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private submitPaperFillData()V
    .locals 5

    .line 315
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 316
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 317
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800da

    .line 318
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v3, 0x1

    .line 325
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public buttonEffect(Landroid/widget/Button;)V
    .locals 1

    .line 1082
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$16;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$16;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dateDiff(Ljava/lang/String;)J
    .locals 8

    .line 2543
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2545
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2546
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2548
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2549
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 2550
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 2551
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 2552
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 2553
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2556
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public dateDiff(Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 2568
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2569
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2571
    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 2573
    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 p3, 0x0

    sub-long v0, v2, p1

    const-wide/16 p1, 0x3e8

    .line 2574
    div-long p1, v0, p1

    const-wide/32 p1, 0xea60

    .line 2575
    div-long p1, v0, p1

    const-wide/32 p1, 0x36ee80

    .line 2576
    div-long p1, v0, p1

    const-wide/32 p1, 0x5265c00

    .line 2577
    div-long p1, v0, p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2580
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public dateDiff4Phone(Ljava/lang/String;)J
    .locals 8

    .line 2520
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2522
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2523
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2525
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2526
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 2527
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 2528
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 2529
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 2530
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2533
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0076

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 140
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    .line 144
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const-string p1, "IRS"

    .line 146
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "teacherNo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "seqno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->currentSeqno:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    .line 157
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userName:Ljava/lang/String;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xnow_quick_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->quickTopic:Ljava/lang/String;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xnow_normal_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->normalTopic:Ljava/lang/String;

    const-string p1, "\u5b78\u751f"

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    const-string p1, "\u5b78\u751f"

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6e2c\u8a66\u5e33\u865f("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    .line 167
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classRoomList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 178
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classRoomString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "\u5b78\u751f"

    .line 179
    iget-object v4, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;

    invoke-direct {v3, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 182
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v2

    invoke-virtual {v3, v4}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_3
    const-string p1, "\u5b78\u751f"

    .line 186
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    new-instance p1, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 189
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_3
    const p1, 0x7f080112

    .line 193
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->img_status:Landroid/widget/TextView;

    .line 195
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initHandler()V

    .line 197
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->init()V

    .line 199
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->startReconnect()V

    const p1, 0x7f080175

    .line 201
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->root:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800f1

    .line 203
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    .line 205
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initEditView()V

    .line 207
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initBtn()V

    .line 209
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initQuickLy()V

    .line 211
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    .line 213
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initFuncBtn()V

    .line 215
    new-instance p1, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 216
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 2810
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 2813
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2814
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v1, 0x2

    .line 2815
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2817
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2818
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2820
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2821
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2823
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 2824
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V

    .line 2825
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->close()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2827
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2788
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2790
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2792
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2795
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 2800
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 2802
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2803
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v1, 0x2

    .line 2804
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
