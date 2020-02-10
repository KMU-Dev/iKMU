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

.field private static final SMALI_TAG:Ljava/lang/String; = "Smali: IRSActivity"


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

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "tcp://mbms.kmu.edu.tw:1883"

    .line 67
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->host:Ljava/lang/String;

    const-string v0, ""

    .line 74
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickTopic:Ljava/lang/String;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->normalTopic:Ljava/lang/String;

    const-string v0, "1"

    .line 77
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    const-string v0, "123456"

    .line 79
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    const-string v0, ""

    .line 81
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->currentSeqno:Ljava/lang/String;

    const-string v0, "https://mbms.kmu.edu.tw:443/KmuIrs/file.serv?fileID="

    .line 104
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 108
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    const-string v0, ""

    .line 125
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->regId:Ljava/lang/String;

    const-string v0, ""

    .line 127
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    const-string v0, ""

    .line 131
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    .line 2302
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$31;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$31;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    .line 2364
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$32;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$32;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->secno:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->secno:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return p0
.end method

.method static synthetic access$1402(Ltw/edu/kmu/act/IRSActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return p1
.end method

.method static synthetic access$1410(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 2

    .line 61
    iget v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/IRSActivity;->ctPeriodCount:I

    return v0
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1502(Ltw/edu/kmu/act/IRSActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1800(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->submitPaperFillData()V

    return-void
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->parseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    return-object p0
.end method

.method static synthetic access$2400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->img_status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickTopic:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->normalTopic:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3400(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    return-void
.end method

.method static synthetic access$3800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Ltw/edu/kmu/act/IRSActivity;)Ltw/edu/kmu/act/IRSActivity$ViewDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    return-object p0
.end method

.method static synthetic access$4000(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4400(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->sendQuickAns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/EditText;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->stuQuEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$4600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->checkbox1:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$4700(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4800(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    return p0
.end method

.method static synthetic access$4810(Ltw/edu/kmu/act/IRSActivity;)I
    .locals 2

    .line 61
    iget v0, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    return v0
.end method

.method static synthetic access$4900(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->connect()V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5000(Ltw/edu/kmu/act/IRSActivity;)Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctEndTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctEndTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Ltw/edu/kmu/act/IRSActivity;->ctServerTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->ctServerTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ltw/edu/kmu/act/IRSActivity;J)J
    .locals 0

    .line 61
    iput-wide p1, p0, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    return-wide p1
.end method

.method private connect()V
    .locals 2

    .line 2491
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$35;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$35;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2509
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hideQuickMode()V
    .locals 2

    .line 294
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->bar1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 2430
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2431
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2432
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2437
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->host:Ljava/lang/String;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v3}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 2439
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 2441
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 2447
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 2449
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 2451
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

    const v0, 0x7f080154

    .line 766
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    .line 767
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickCountTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080156

    .line 769
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    .line 770
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$7;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080052

    .line 781
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    .line 782
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 783
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 785
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$8;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$8;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005c

    .line 794
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    .line 795
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 796
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 798
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$9;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$9;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080061

    .line 807
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    .line 808
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 809
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 811
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$10;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$10;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080062

    .line 820
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    .line 821
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 822
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 824
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    new-instance v2, Ltw/edu/kmu/act/IRSActivity$11;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/IRSActivity$11;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080065

    .line 833
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    .line 834
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->buttonEffect(Landroid/widget/Button;)V

    .line 835
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    const-string v2, "5"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 837
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$12;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$12;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 848
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 849
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 850
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 851
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f080099

    .line 855
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->checkbox1:Landroid/widget/CheckBox;

    const v0, 0x7f08005e

    .line 858
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    .line 859
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "The pace is too fast."

    goto :goto_0

    :cond_0
    const-string v1, "\u8001\u5e2b,\u60a8\u7684\u8b1b\u8ab2\u901f\u5ea6\u592a\u5feb\u4e86!!"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    const-string v1, "#62AFE2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 861
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn21:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$13;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$13;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005f

    .line 923
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    .line 924
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "I don\u2019t understand this part."

    goto :goto_1

    :cond_1
    const-string v1, "\u8001\u5e2b,\u6211\u4e0d\u61c2\u9019\u90e8\u4efd\u7684\u5167\u5bb9!!"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    const-string v1, "#62AFE2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 926
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn22:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$14;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$14;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080060

    .line 985
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    .line 988
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btn23:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$15;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$15;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initEditView()V
    .locals 6

    const v0, 0x7f0800a6

    .line 523
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    .line 524
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 525
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 526
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->countTimeTitle:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 532
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0072

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0801c7

    .line 533
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 538
    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    .line 539
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 540
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 541
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 542
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 543
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 544
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    const-string v2, "#F89022"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 546
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    iget-boolean v2, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "Submit"

    goto :goto_1

    :cond_1
    const-string v2, "\u9001\u51fa"

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 548
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/IRSActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$3;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->btnSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f080063

    .line 579
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 580
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$4;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080064

    .line 593
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 595
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$5;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801a5

    .line 607
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->stuQuEdit:Landroid/widget/EditText;

    return-void
.end method

.method private initFuncBtn()V
    .locals 4

    const v0, 0x7f080040

    .line 220
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 221
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 222
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 223
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string v1, "#FFFFFF"

    .line 227
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    iget-boolean v1, p0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Answer/question history"

    goto :goto_0

    :cond_0
    const-string v1, "\u4f5c\u7b54/\u63d0\u554f\u8a18\u9304"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$1;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08006f

    .line 243
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 244
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$2;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 614
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$6;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$6;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initQuickLy()V
    .locals 1

    const v0, 0x7f08016a

    .line 286
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const v0, 0x7f08016b

    .line 287
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    const v0, 0x7f08016c

    .line 288
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    const v0, 0x7f080030

    .line 289
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

    .line 1107
    sget-object v2, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMsg start inputMsgType is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "msgType"

    .line 1111
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "4"

    .line 1112
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

    .line 1114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const-string v2, "Completed"

    goto :goto_0

    :cond_0
    const-string v2, "\u4f5c\u7b54\u5b8c\u6210\uff0c\u6559\u5e2b\u5df2\u6536\u5230\u60a8\u7684\u7b54\u6848\uff01"

    .line 1115
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

    .line 1116
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1120
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_2
    const-string v3, "question"

    .line 1124
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->endTime:Ljava/lang/String;

    const-string v3, "question"

    .line 1125
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "period"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "question"

    .line 1128
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "seqList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1136
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

    .line 1144
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

    .line 1148
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 1149
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

    .line 1153
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-nez v9, :cond_6

    .line 1154
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

    .line 1163
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

    .line 1164
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->endTime:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ltw/edu/kmu/act/IRSActivity;->dateDiff(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    .line 1166
    div-long v11, v9, v11

    iget-wide v13, v7, Ltw/edu/kmu/act/IRSActivity;->phoneTimeDiff:J

    const/4 v3, 0x0

    sub-long/2addr v11, v13

    .line 1167
    sget-object v3, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "diff is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
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

    .line 1173
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v2, "time is up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1178
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

    .line 1179
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v7, Ltw/edu/kmu/act/IRSActivity;->periodCount:I

    goto :goto_3

    .line 1181
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

    .line 1183
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

    .line 1185
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    if-eqz v3, :cond_9

    .line 1186
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    :cond_9
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    .line 1190
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v3, "0"

    .line 1193
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "question"

    .line 1194
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "question"

    .line 1196
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "question"

    .line 1197
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "questionId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    const-string v1, "1"

    .line 1200
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v1, :cond_e

    const-string v1, "\u5feb\u554f\u5feb\u7b54"

    .line 1202
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    const-string v1, "Quick Quiz"

    .line 1203
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    .line 1205
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

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1207
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

    .line 1208
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1212
    :cond_b
    invoke-direct/range {p0 .. p0}, Ltw/edu/kmu/act/IRSActivity;->showQuickMode()V

    .line 1214
    iput-object v6, v7, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    .line 1216
    sget-object v1, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u5feb\u554f\u5feb\u7b54  start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
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

    .line 1218
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "msgType"

    const-string v13, "98"

    .line 1219
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "userId"

    .line 1220
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "questionId"

    .line 1221
    invoke-virtual {v2, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "os"

    const-string v13, "android"

    .line 1222
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "version"

    .line 1223
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v13, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "token"

    .line 1224
    iget-object v13, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v13, v13, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "device"

    .line 1225
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1226
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    new-array v12, v4, [B

    const-string v12, "UTF-8"

    .line 1228
    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 1229
    new-instance v13, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v13, v12}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1233
    new-instance v12, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    invoke-direct {v12, v7, v10}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 1234
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    aput-object v6, v3, v11

    const/4 v1, 0x3

    const-string v2, "98"

    aput-object v2, v3, v1

    invoke-virtual {v12, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1235
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1236
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1237
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1238
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn4:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1239
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->btn5:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1240
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->quickbtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1242
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_c

    const-string v2, "Quick Quiz Start"

    goto :goto_6

    :cond_c
    const-string v2, "\u5feb\u554f\u5feb\u7b54\u5df2\u958b\u59cb,\u8acb\u4f5c\u7b54"

    .line 1243
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

    .line 1244
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_21

    :cond_e
    const-string v1, "2"

    .line 1250
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

    .line 1929
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1931
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

    .line 1932
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 1933
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

    .line 1934
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1940
    :cond_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "msgType"

    const-string v14, "98"

    .line 1941
    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "userId"

    .line 1942
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "questionId"

    .line 1943
    invoke-virtual {v1, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "os"

    const-string v14, "android"

    .line 1944
    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "version"

    .line 1945
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v14, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "token"

    .line 1946
    iget-object v14, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v14, v14, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "device"

    .line 1947
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1948
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1949
    new-array v12, v4, [B

    const-string v12, "UTF-8"

    .line 1950
    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 1951
    new-instance v14, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v14, v12}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1956
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    .line 1957
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1958
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const-string v14, "#1980E0"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1960
    new-instance v12, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    invoke-direct {v12, v7, v10}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 1961
    new-array v14, v3, [Ljava/lang/String;

    aput-object v6, v14, v4

    aput-object v1, v14, v5

    aput-object v6, v14, v11

    const/4 v1, 0x3

    const-string v16, "98"

    aput-object v16, v14, v1

    invoke-virtual {v12, v14}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1962
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1963
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1964
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v12, "#1980E0"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1966
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1967
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1969
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v12, 0x11

    .line 1970
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v12, 0x41200000    # 10.0f

    .line 1971
    invoke-static {v7, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    .line 1972
    invoke-virtual {v1, v4, v12, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v12, "timer"

    .line 1973
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1974
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 1975
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1980
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1981
    sget-object v12, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v12, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v12, 0x41800000    # 16.0f

    .line 1982
    invoke-virtual {v1, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1983
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v12, "00:00:00"

    .line 1984
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, -0x777778

    .line 1985
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1986
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1988
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1989
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41c00000    # 24.0f

    .line 1990
    invoke-virtual {v1, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v12, "question"

    .line 1991
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v14, "description"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    iget-object v12, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1994
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subQuList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v1, 0x0

    .line 1995
    :goto_a
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1996
    invoke-virtual {v12, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v14, "subQuOrder"

    .line 1997
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v14, "questionType"

    .line 1998
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1999
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2000
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41a00000    # 20.0f

    .line 2001
    invoke-virtual {v3, v11, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2002
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

    .line 2003
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v3, "imgPath"

    .line 2005
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2006
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2007
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x43160000    # 150.0f

    invoke-static {v7, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v13, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 2008
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2009
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2010
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2011
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "imgFile"

    .line 2012
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, ""

    .line 2013
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2016
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$28;

    invoke-direct {v3, v7, v11}, Ltw/edu/kmu/act/IRSActivity$28;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2027
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

    .line 2028
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2029
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2030
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_12

    const-string v4, "Click image to enlarge"

    goto :goto_b

    :cond_12
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 2031
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2032
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 2033
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2034
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2035
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_13
    const-string v3, "2"

    .line 2038
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2040
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v7}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radioGroup"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v1, "optionList"

    .line 2044
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2045
    :goto_c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 2046
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2047
    new-instance v10, Landroid/widget/RadioButton;

    invoke-direct {v10, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 2048
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

    .line 2049
    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 2050
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

    .line 2051
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v11, 0x7f08004f

    invoke-virtual {v10, v11, v4}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 2052
    invoke-virtual {v3, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    .line 2055
    :cond_14
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_f

    :cond_15
    const-string v3, "3"

    .line 2059
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "optionList"

    .line 2062
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2063
    :goto_d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 2064
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2065
    new-instance v10, Landroid/widget/CheckBox;

    invoke-direct {v10, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 2066
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

    .line 2067
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2068
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

    .line 2069
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v11, 0x7f08004f

    invoke-virtual {v10, v11, v4}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 2070
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_16
    const-string v2, "4"

    .line 2074
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2076
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2078
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    const/4 v4, -0x1

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 2079
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2080
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2081
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2082
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2083
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v1, -0x1000000

    .line 2085
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v1, -0x1

    .line 2086
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 2087
    iget-boolean v1, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v1, :cond_17

    const-string v1, "Please answer"

    goto :goto_e

    :cond_17
    const-string v1, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2088
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

    .line 2094
    :cond_19
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004f

    .line 2095
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 2096
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_1a

    const-string v2, "Cancel"

    goto :goto_10

    :cond_1a
    const-string v2, "\u53d6\u6d88"

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 2097
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 2098
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2099
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

    .line 2100
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 2101
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2102
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2103
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2104
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2105
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2106
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08005c

    .line 2107
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setId(I)V

    .line 2108
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_1b

    const-string v3, "OK"

    goto :goto_11

    :cond_1b
    const-string v3, "\u78ba\u5b9a"

    :goto_11
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 2109
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x7f0700f2

    .line 2110
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v3, 0x11

    .line 2111
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 2112
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2113
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 2114
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2115
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2116
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2117
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2118
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v3, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 2119
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    .line 2120
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2121
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2122
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v3, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 2123
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2124
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$29;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$29;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2134
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

    .line 1252
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentType:Ljava/lang/String;

    const-string v1, "Quiz"

    .line 1253
    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->currentEType:Ljava/lang/String;

    .line 1254
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

    .line 1255
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1256
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

    .line 1257
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 1264
    :cond_1e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "msgType"

    const-string v4, "98"

    .line 1265
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "userId"

    .line 1266
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "questionId"

    .line 1267
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "android"

    .line 1268
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 1269
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    invoke-virtual {v4, v7}, Ltw/edu/kmu/act/MyApplication;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "token"

    .line 1270
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    .line 1271
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1272
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1273
    new-array v4, v3, [B

    const-string v3, "UTF-8"

    .line 1274
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1275
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 1279
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v4, 0x4

    .line 1280
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

    .line 1281
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    if-eqz v1, :cond_1f

    .line 1282
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-virtual {v1}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->dismiss()V

    .line 1285
    :cond_1f
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    .line 1286
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1287
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v1, "2"

    .line 1289
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1292
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1293
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1294
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1296
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1297
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1300
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1301
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1302
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1303
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1304
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1305
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1310
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1312
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1313
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1314
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1315
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1316
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1318
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1319
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1320
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "question"

    .line 1321
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1324
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1326
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v10, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1327
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1328
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1331
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "imgFile"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    .line 1332
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1333
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$19;

    invoke-direct {v1, v7, v5}, Ltw/edu/kmu/act/IRSActivity$19;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
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

    .line 1345
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1346
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1347
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_20

    const-string v3, "Click image to enlarge"

    goto :goto_15

    :cond_20
    const-string v3, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 1348
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1349
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1350
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1351
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1355
    :cond_21
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v7}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v1, "radioGroup"

    .line 1356
    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v1, "question"

    .line 1359
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "optionList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 1360
    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 1361
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1362
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1363
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

    .line 1364
    invoke-virtual {v5, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1365
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

    .line 1366
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v10, 0x7f08004f

    invoke-virtual {v5, v10, v4}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 1367
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_16

    .line 1370
    :cond_22
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1371
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004f

    .line 1372
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1373
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_23

    const-string v2, "Cancel"

    goto :goto_17

    :cond_23
    const-string v2, "\u53d6\u6d88"

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1374
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1375
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1376
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

    .line 1377
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1378
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1379
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1380
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1381
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1382
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1383
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005c

    .line 1384
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setId(I)V

    .line 1385
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_24

    const-string v4, "OK"

    goto :goto_18

    :cond_24
    const-string v4, "\u78ba\u5b9a"

    :goto_18
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1386
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1387
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1388
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1389
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1391
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1392
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1393
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1394
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1395
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1396
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1397
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1398
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1399
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1400
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$20;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$20;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
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

    .line 1502
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1504
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1505
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1506
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1508
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1509
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1511
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1512
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1513
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1514
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1515
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1516
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1517
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1522
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1524
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1525
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1526
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1527
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1528
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1530
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 1531
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1532
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "question"

    .line 1533
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1536
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1537
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1538
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v10, -0x2

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1539
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1540
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1543
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "imgFile"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, ""

    .line 1544
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1547
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$22;

    invoke-direct {v1, v7, v5}, Ltw/edu/kmu/act/IRSActivity$22;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1558
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

    .line 1559
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1560
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1561
    iget-boolean v3, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v3, :cond_26

    const-string v3, "Click image to enlarge"

    goto :goto_19

    :cond_26
    const-string v3, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_19
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 1562
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1563
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1564
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1565
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1566
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_27
    const-string v1, "question"

    .line 1570
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "optionList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    .line 1571
    :goto_1a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1572
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1573
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1574
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

    .line 1575
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1576
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

    .line 1577
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08004f

    invoke-virtual {v4, v5, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 1578
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1a

    .line 1580
    :cond_28
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004f

    .line 1581
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1582
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_29

    const-string v2, "Cancel"

    goto :goto_1b

    :cond_29
    const-string v2, "\u53d6\u6d88"

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1583
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1584
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1585
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

    .line 1586
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1587
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1588
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1589
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1590
    invoke-static {v7, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1591
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1592
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005c

    .line 1593
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setId(I)V

    .line 1594
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_2a

    const-string v4, "OK"

    goto :goto_1c

    :cond_2a
    const-string v4, "\u78ba\u5b9a"

    :goto_1c
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1595
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1596
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1597
    invoke-virtual {v10, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1598
    invoke-virtual {v10, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1600
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1601
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1602
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1603
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1604
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1605
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1606
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1607
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1608
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1609
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$23;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$23;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
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

    .line 1726
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1728
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    .line 1729
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1730
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v3, "#1980E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1732
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    .line 1733
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1735
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    .line 1736
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1737
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    .line 1738
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "timer"

    .line 1739
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1740
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1741
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1746
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 1748
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, -0x1

    .line 1749
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "00:00:00"

    .line 1750
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0x777778

    .line 1751
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1752
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1754
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 1755
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    .line 1756
    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "question"

    .line 1757
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    iget-object v3, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, "question"

    .line 1760
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "imgPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1761
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1762
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v7, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    const/4 v5, -0x2

    invoke-direct {v4, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 1763
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1764
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1765
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Ltw/edu/kmu/act/IRSActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "question"

    .line 1767
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgFile"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    .line 1768
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1771
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$25;

    invoke-direct {v1, v7, v2}, Ltw/edu/kmu/act/IRSActivity$25;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1782
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

    .line 1783
    iget-object v1, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1784
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1785
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2c

    const-string v2, "Click image to enlarge"

    goto :goto_1d

    :cond_2c
    const-string v2, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1786
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1787
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 1788
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1789
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1790
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1793
    :cond_2d
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1795
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1796
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1797
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1798
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1799
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1800
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "edit1"

    .line 1801
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v2, -0x1000000

    .line 1802
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v2, -0x1

    .line 1803
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 1804
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2e

    const-string v2, "Please answer"

    goto :goto_1e

    :cond_2e
    const-string v2, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1805
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1807
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004f

    .line 1808
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 1809
    iget-boolean v2, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v2, :cond_2f

    const-string v2, "Cancel"

    goto :goto_1f

    :cond_2f
    const-string v2, "\u53d6\u6d88"

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 1810
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const v2, 0x7f0700f2

    .line 1811
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1812
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

    .line 1813
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x40a00000    # 5.0f

    .line 1814
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1815
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1816
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1817
    invoke-static {v7, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1818
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1819
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08005c

    .line 1820
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setId(I)V

    .line 1821
    iget-boolean v4, v7, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v4, :cond_30

    const-string v4, "OK"

    goto :goto_20

    :cond_30
    const-string v4, "\u78ba\u5b9a"

    :goto_20
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    .line 1822
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const v4, 0x7f0700f2

    .line 1823
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v4, 0x11

    .line 1824
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 1825
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 1827
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1828
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1829
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1830
    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1831
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    iput-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    .line 1832
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1833
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1834
    iget-object v2, v7, Ltw/edu/kmu/act/IRSActivity;->alertDialog:Ltw/edu/kmu/act/IRSActivity$ViewDialog;

    iget-object v4, v7, Ltw/edu/kmu/act/IRSActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v4, v9}, Ltw/edu/kmu/act/IRSActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1835
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1836
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$26;

    invoke-direct {v2, v7}, Ltw/edu/kmu/act/IRSActivity$26;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1846
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$27;

    invoke-direct {v1, v7, v9, v6, v6}, Ltw/edu/kmu/act/IRSActivity$27;-><init>(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2259
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

    .line 2265
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_22
    return-void
.end method

.method private sendQuickAns(Ljava/lang/String;)V
    .locals 4

    .line 734
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

    .line 735
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "msgType"

    const-string v3, "1"

    .line 736
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "questionType"

    const-string v3, "1"

    .line 737
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userId"

    .line 738
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userName"

    .line 739
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->ansUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "answer"

    .line 740
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 743
    new-array v2, v1, [B

    const-string v2, "UTF-8"

    .line 744
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 745
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 749
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v3, 0x3

    .line 750
    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quickModeQuestionId:Ljava/lang/String;

    aput-object v0, v3, p1

    invoke-virtual {v2, v3}, Ltw/edu/kmu/act/IRSActivity$SendData4Type99;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 752
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    .line 753
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 756
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

    .line 759
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 760
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

    .line 761
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showQuickMode()V
    .locals 2

    .line 303
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root11:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->root21:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->bar1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startReconnect()V
    .locals 8

    .line 2409
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2410
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

    .line 312
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 313
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 314
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800d0

    .line 315
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v2, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v3, 0x1

    .line 322
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

    .line 1079
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$16;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRSActivity$16;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dateDiff(Ljava/lang/String;)J
    .locals 8

    .line 2540
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2542
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2543
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2545
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2546
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 2547
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 2548
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 2549
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 2550
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2553
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method public dateDiff(Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 2565
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2566
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2568
    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 2570
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

    .line 2571
    div-long p1, v0, p1

    const-wide/32 p1, 0xea60

    .line 2572
    div-long p1, v0, p1

    const-wide/32 p1, 0x36ee80

    .line 2573
    div-long p1, v0, p1

    const-wide/32 p1, 0x5265c00

    .line 2574
    div-long p1, v0, p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2577
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public dateDiff4Phone(Ljava/lang/String;)J
    .locals 8

    .line 2517
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2519
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2520
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2522
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2523
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 2524
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 2525
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 2526
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 2527
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2530
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0074

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 139
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Ltw/edu/kmu/act/IRSActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string p1, "IRS"

    .line 143
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->classId:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "teacherNo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->teacherNo:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "seqno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->currentSeqno:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userID:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "userName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->userName:Ljava/lang/String;

    .line 156
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

    .line 157
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

    .line 161
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

    .line 162
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

    .line 164
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "classRoomList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    # Log Bundle.getSerializable("classRoomList"):ArrayList
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->SMALI_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 175
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

    .line 176
    iget-object v4, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    new-instance v3, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;

    invoke-direct {v3, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 179
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v2

    invoke-virtual {v3, v4}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_3
    const-string p1, "\u5b78\u751f"

    .line 183
    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->userType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    new-instance p1, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 186
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_3
    const p1, 0x7f080108

    .line 190
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->img_status:Landroid/widget/TextView;

    .line 192
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initHandler()V

    .line 194
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->init()V

    .line 196
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->startReconnect()V

    const p1, 0x7f080168

    .line 198
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->root:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800e7

    .line 200
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity;->form1:Landroid/widget/LinearLayout;

    .line 202
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initEditView()V

    .line 204
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initBtn()V

    .line 206
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initQuickLy()V

    .line 208
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->hideQuickMode()V

    .line 210
    invoke-direct {p0}, Ltw/edu/kmu/act/IRSActivity;->initFuncBtn()V

    .line 212
    new-instance p1, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;

    invoke-direct {p1, p0, v1}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    .line 213
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 2807
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 2810
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2811
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v1, 0x2

    .line 2812
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2814
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->aHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2817
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2818
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2820
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 2821
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V

    .line 2822
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->close()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2824
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2785
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2787
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->client:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2789
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2792
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 2797
    sget-object v0, Ltw/edu/kmu/act/IRSActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    .line 2799
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity;->quid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2800
    new-instance v0, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/IRSActivity$SendAbnormalData;-><init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V

    const/4 v1, 0x2

    .line 2801
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
