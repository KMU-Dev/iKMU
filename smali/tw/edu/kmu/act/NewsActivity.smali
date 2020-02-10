.class public Ltw/edu/kmu/act/NewsActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/NewsActivity$getServerData;,
        Ltw/edu/kmu/act/NewsActivity$updateNewsFromServer;
    }
.end annotation


# static fields
.field public static final QUERY_TYPE_BETER_TEACH_ANN:I = 0x4

.field public static final QUERY_TYPE_MYFAVORITE:I = 0x63

.field public static final QUERY_TYPE_SCHOOL_ANN:I = 0x1

.field public static final QUERY_TYPE_SSD_ANN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NewsActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private Maxcount:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private btn4:Landroid/widget/Button;

.field private count:I

.field private dataList:Ljava/util/ArrayList;
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

.field private footView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field isLoadingData:Z

.field isRefreshing:Z

.field private lv:Landroid/widget/ListView;

.field private newServerDataList:Ljava/util/ArrayList;
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

.field private page:I

.field private privilege:I

.field private queryType:Ljava/lang/String;

.field private sharedData:Landroid/content/SharedPreferences;

.field shouldLoadData:Z

.field shouldRefresh:Z

.field private size:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 40
    iput v0, p0, Ltw/edu/kmu/act/NewsActivity;->CLOSE_PROGRESSBAR:I

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    const/16 v1, 0xf

    .line 48
    iput v1, p0, Ltw/edu/kmu/act/NewsActivity;->size:I

    .line 50
    iput v0, p0, Ltw/edu/kmu/act/NewsActivity;->count:I

    const/16 v1, 0xfa

    .line 52
    iput v1, p0, Ltw/edu/kmu/act/NewsActivity;->Maxcount:I

    const-string v1, "1"

    .line 63
    iput-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    .line 65
    iput v0, p0, Ltw/edu/kmu/act/NewsActivity;->privilege:I

    .line 78
    iput-boolean v0, p0, Ltw/edu/kmu/act/NewsActivity;->shouldRefresh:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ltw/edu/kmu/act/NewsActivity;->isRefreshing:Z

    iput-boolean v0, p0, Ltw/edu/kmu/act/NewsActivity;->shouldLoadData:Z

    iput-boolean v1, p0, Ltw/edu/kmu/act/NewsActivity;->isLoadingData:Z

    .line 408
    new-instance v0, Ltw/edu/kmu/act/NewsActivity$9;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/NewsActivity$9;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/NewsActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Ltw/edu/kmu/act/NewsActivity;->Maxcount:I

    return p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->btn3:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->btn4:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/NewsActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->showList()V

    return-void
.end method

.method static synthetic access$1500(Ltw/edu/kmu/act/NewsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Ltw/edu/kmu/act/NewsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1602(Ltw/edu/kmu/act/NewsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Ltw/edu/kmu/act/NewsActivity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/NewsActivity;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/NewsActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    return p1
.end method

.method static synthetic access$308(Ltw/edu/kmu/act/NewsActivity;)I
    .locals 2

    .line 32
    iget v0, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    return v0
.end method

.method static synthetic access$402(Ltw/edu/kmu/act/NewsActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Ltw/edu/kmu/act/NewsActivity;->count:I

    return p1
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/NewsActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Ltw/edu/kmu/act/NewsActivity;->privilege:I

    return p1
.end method

.method static synthetic access$802(Ltw/edu/kmu/act/NewsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/NewsActivity;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Ltw/edu/kmu/act/NewsActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method private initBtn()V
    .locals 3

    const v0, 0x7f080052

    .line 168
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn1:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn1:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Campus Events"

    goto :goto_0

    :cond_0
    const-string v1, "\u6821\u5712\u516c\u544a"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f07013a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$2;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005c

    .line 190
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn2:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn2:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Student Events"

    goto :goto_1

    :cond_1
    const-string v1, "\u5b78\u52d9\u516c\u544a"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn2:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$3;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080061

    .line 211
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn3:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn3:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Academic Events"

    goto :goto_2

    :cond_2
    const-string v1, "\u6559\u52d9\u516c\u544a"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn3:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$4;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080062

    .line 233
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn4:Landroid/widget/Button;

    .line 234
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn4:Landroid/widget/Button;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->currentLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "My Collections"

    goto :goto_3

    :cond_3
    const-string v1, "\u6211\u7684\u6536\u85cf"

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->btn4:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$5;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 486
    iget-boolean v0, p0, Ltw/edu/kmu/act/NewsActivity;->isPad:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 487
    iput v0, p0, Ltw/edu/kmu/act/NewsActivity;->size:I

    .line 492
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 497
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 503
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "p"

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "f"

    .line 505
    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "s"

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Ltw/edu/kmu/act/NewsActivity;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " readServerDataList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readServerDataList page is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and queryType is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 510
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ltw/edu/kmu/act/NewsActivity;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 515
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 9

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    .line 370
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 371
    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    const v6, 0x7f0a009a

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "category"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "dateTime"

    aput-object v3, v7, v2

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 380
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$8;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$8;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801c7
        0x7f080238
        0x7f0800b6
    .end array-data
.end method

.method private updateAdapter()V
    .locals 10

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Ltw/edu/kmu/act/NewsActivity;->isLoadingData:Z

    .line 256
    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updateAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privilege:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ltw/edu/kmu/act/NewsActivity;->privilege:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v1, p0, Ltw/edu/kmu/act/NewsActivity;->privilege:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    .line 262
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->updateAdapter4MyNews()V

    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 271
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    .line 272
    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 273
    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_2
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    const v7, 0x7f0a009a

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v8, v0

    const/4 v0, 0x1

    const-string v3, "category"

    aput-object v3, v8, v0

    const/4 v0, 0x2

    const-string v3, "dateTime"

    aput-object v3, v8, v0

    new-array v9, v2, [I

    fill-array-data v9, :array_0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 284
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 285
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 286
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 288
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$6;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$6;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 307
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget v1, p0, Ltw/edu/kmu/act/NewsActivity;->count:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 308
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->postInvalidate()V

    return-void

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f0801c7
        0x7f080238
        0x7f0800b6
    .end array-data
.end method

.method private updateAdapter4MyNews()V
    .locals 8

    .line 318
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->readMyData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 319
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 321
    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    .line 323
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "2"

    .line 326
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "4"

    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const-string v2, "\u6559\u5b78\u5353\u8d8a"

    .line 331
    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "category"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_1
    const-string v2, "\u5b78\u52d9\u516c\u544a"

    .line 328
    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "category"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    const-string v2, "\u6821\u5712\u516c\u544a"

    .line 325
    iget-object v3, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "category"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_6
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/NewsActivity;->dataList:Ljava/util/ArrayList;

    const v5, 0x7f0a009a

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "title"

    aput-object v7, v6, v0

    const-string v0, "category"

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    const-string v7, "datetime"

    aput-object v7, v6, v0

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 342
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 343
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/NewsActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/NewsActivity$7;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/NewsActivity$7;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 363
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->postInvalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801c7
        0x7f080238
        0x7f0800b6
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0099

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    sget-object v0, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/NewsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 91
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c00c8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->display:Landroid/view/Display;

    const p1, 0x7f080135

    .line 97
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/NewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    .line 99
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x7f0a0095

    .line 100
    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    .line 101
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->footView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 103
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Ltw/edu/kmu/act/NewsActivity$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/NewsActivity$1;-><init>(Ltw/edu/kmu/act/NewsActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 151
    invoke-virtual {p0}, Ltw/edu/kmu/act/NewsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0c0040

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->url:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    const/4 p1, 0x1

    .line 154
    iput p1, p0, Ltw/edu/kmu/act/NewsActivity;->privilege:I

    .line 155
    new-instance v2, Ltw/edu/kmu/act/NewsActivity$getServerData;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/act/NewsActivity$getServerData;-><init>(Ltw/edu/kmu/act/NewsActivity;Ltw/edu/kmu/act/NewsActivity$1;)V

    .line 156
    new-array p1, p1, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {v2, p1}, Ltw/edu/kmu/act/NewsActivity$getServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->initBtn()V

    .line 160
    sget-object p1, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 602
    sget-object v0, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 603
    iput-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    .line 604
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 534
    sget-object v0, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 536
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 524
    sget-object v0, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->newServerDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Ltw/edu/kmu/act/NewsActivity;->updateAdapter()V

    .line 529
    :cond_0
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method

.method public readMyData()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->sharedData:Landroid/content/SharedPreferences;

    const-string v1, "NewData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 577
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 578
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 579
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 580
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 581
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 584
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 585
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 586
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 588
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 594
    sget-object v2, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMyData Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public readSharedPreferencesData()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Ltw/edu/kmu/act/NewsActivity;->sharedData:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/act/NewsActivity;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/NewsActivity;->queryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltw/edu/kmu/act/NewsActivity;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 545
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 546
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 547
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 548
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 549
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 550
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 551
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 552
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 553
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 554
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 555
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 557
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 563
    sget-object v2, Ltw/edu/kmu/act/NewsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method
