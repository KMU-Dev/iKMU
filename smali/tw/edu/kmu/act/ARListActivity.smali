.class public Ltw/edu/kmu/act/ARListActivity;
.super Landroid/app/Activity;
.source "ARListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARListActivity"


# instance fields
.field private final WORK_UPDATE:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private frontCam:Z

.field private gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

.field private handler:Landroid/os/Handler;

.field private isPad:Z

.field private isSensorExist:Z

.field private kmFormatter:Ljava/text/DecimalFormat;

.field private listbg:[I

.field private lv:Landroid/widget/ListView;

.field private mFormatter:Ljava/text/DecimalFormat;

.field private mTablayout:Landroid/support/design/widget/TabLayout;

.field private queryEnNameAry:[Ljava/lang/String;

.field private queryNameAry:[Ljava/lang/String;

.field private queryTypeAry:[I

.field private rearCam:Z

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private serverDataList:Ljava/util/ArrayList;
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

.field private sharedData:Landroid/content/SharedPreferences;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x3e9

    .line 68
    iput v0, p0, Ltw/edu/kmu/act/ARListActivity;->WORK_UPDATE:I

    .line 70
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->kmFormatter:Ljava/text/DecimalFormat;

    .line 71
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->mFormatter:Ljava/text/DecimalFormat;

    const/4 v0, 0x6

    .line 73
    iput v0, p0, Ltw/edu/kmu/act/ARListActivity;->type:I

    const/4 v1, 0x2

    .line 76
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->listbg:[I

    const/4 v2, 0x7

    .line 84
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Ltw/edu/kmu/act/ARListActivity;->queryTypeAry:[I

    .line 86
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\u6821\u5712\u5730\u6a19"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\u98df"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "\u8863"

    aput-object v4, v3, v1

    const-string v4, "\u4f4f"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "\u884c"

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-string v4, "\u80b2"

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "\u6a02"

    aput-object v4, v3, v0

    iput-object v3, p0, Ltw/edu/kmu/act/ARListActivity;->queryNameAry:[Ljava/lang/String;

    .line 94
    iput-boolean v6, p0, Ltw/edu/kmu/act/ARListActivity;->isSensorExist:Z

    iput-boolean v5, p0, Ltw/edu/kmu/act/ARListActivity;->isPad:Z

    .line 96
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "  Landmark  "

    aput-object v3, v2, v5

    const-string v3, "  Dining  "

    aput-object v3, v2, v6

    const-string v3, "  Clothing  "

    aput-object v3, v2, v1

    const-string v1, "  Housing  "

    aput-object v1, v2, v7

    const-string v1, "  Transportation  "

    aput-object v1, v2, v8

    const-string v1, "  Learning  "

    aput-object v1, v2, v9

    const-string v1, "  Recreation  "

    aput-object v1, v2, v0

    iput-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->queryEnNameAry:[Ljava/lang/String;

    .line 504
    new-instance v0, Ltw/edu/kmu/act/ARListActivity$8;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ARListActivity$8;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->handler:Landroid/os/Handler;

    .line 546
    new-instance v0, Ltw/edu/kmu/act/ARListActivity$9;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ARListActivity$9;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void

    :array_0
    .array-data 4
        0x7f070152
        0x7f070152
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/ARListActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Ltw/edu/kmu/act/ARListActivity;->type:I

    return p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/SimpleAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    return-object p0
.end method

.method static synthetic access$102(Ltw/edu/kmu/act/ARListActivity;I)I
    .locals 0

    .line 51
    iput p1, p0, Ltw/edu/kmu/act/ARListActivity;->type:I

    return p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->getPoi()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/ARListActivity;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ARListActivity;I)I
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ARListActivity;->getTypeBtnIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/ARListActivity;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/ARListActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->showList()V

    return-void
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/ARListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/ARListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/ARListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/ARListActivity;)Landroid/hardware/SensorManager;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method private checkBundle()V
    .locals 4

    .line 159
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "bundle is null and go to UpdatePoiFromServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->createTab1()V

    .line 165
    new-instance v0, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;-><init>(Ltw/edu/kmu/act/ARListActivity;Ltw/edu/kmu/act/ARListActivity$1;)V

    const/4 v1, 0x1

    .line 166
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/ARListActivity$GetPoiFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "bundle is not null and go to showList method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/ARListActivity;->type:I

    .line 172
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "serverDataList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    .line 173
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->createTab1()V

    .line 174
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->showList()V

    .line 175
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARListActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARListActivity$1;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private createTab1()V
    .locals 4

    const v0, 0x7f0801b6

    .line 191
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity;->queryNameAry:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARListActivity;->queryNameAry:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/ARListActivity;->queryTypeAry:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->mTablayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Ltw/edu/kmu/act/ARListActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ARListActivity$2;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private getPoi()Ljava/util/ArrayList;
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

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 627
    sget-object v1, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v2, "readPOI from server"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltw/edu/kmu/resource/ServerResource;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v1

    .line 631
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 632
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :try_start_1
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 635
    sget-object v3, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 636
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 639
    :catch_1
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v1
.end method

.method private getTypeBtnIndex(I)I
    .locals 3

    .line 289
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 291
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->queryTypeAry:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 293
    iget-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->queryTypeAry:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initFunctionBtn()V
    .locals 4

    const v0, 0x7f08002a

    .line 303
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07006b

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v0, 0x7f08002c

    .line 305
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f08002b

    .line 306
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 308
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->checkCamera()V

    .line 310
    iget-boolean v2, p0, Ltw/edu/kmu/act/ARListActivity;->rearCam:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Ltw/edu/kmu/act/ARListActivity;->isSensorExist:Z

    if-nez v2, :cond_1

    :cond_0
    const v2, 0x7f08002d

    .line 312
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    .line 313
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    :cond_1
    new-instance v2, Ltw/edu/kmu/act/ARListActivity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ARListActivity$3;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v0, Ltw/edu/kmu/act/ARListActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ARListActivity$4;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showList()V
    .locals 23

    move-object/from16 v0, p0

    .line 370
    iget-object v1, v0, Ltw/edu/kmu/act/ARListActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Ltw/edu/kmu/act/ARListActivity$5;

    invoke-direct {v2, v0}, Ltw/edu/kmu/act/ARListActivity$5;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    sget-object v1, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showList type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Ltw/edu/kmu/act/ARListActivity;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, v0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, v0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 394
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v2, v0, Ltw/edu/kmu/act/ARListActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 397
    iget v4, v0, Ltw/edu/kmu/act/ARListActivity;->type:I

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 398
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 403
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0110

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 404
    iget-object v6, v0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    invoke-virtual {v6}, Ltw/edu/kmu/facade/GPSFacade;->getLocation()Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 406
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 407
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    :cond_3
    const/4 v14, 0x0

    .line 409
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v12, 0x1

    if-ge v14, v6, :cond_6

    .line 410
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/util/HashMap;

    .line 412
    new-array v10, v7, [F

    const-string v6, "latitude"

    .line 414
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v6, "longitude"

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    move-wide v6, v2

    move-wide v8, v4

    move-object/from16 v20, v10

    move-wide/from16 v10, v16

    move-wide/from16 v21, v4

    move-object v15, v13

    const/4 v5, 0x1

    move-wide/from16 v12, v18

    move v4, v14

    move-object/from16 v14, v20

    invoke-static/range {v6 .. v14}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const-string v6, "aa"

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v20, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 417
    aget v6, v20, v5

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 418
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_4

    iget-object v6, v0, Ltw/edu/kmu/act/ARListActivity;->kmFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    div-double/2addr v10, v8

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    iget-object v6, v0, Ltw/edu/kmu/act/ARListActivity;->mFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string v7, "distance"

    .line 419
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v5, v10, v8

    if-lez v5, :cond_5

    const-string v5, "km"

    goto :goto_3

    :cond_5
    const-string v5, "m"

    :goto_3
    const-string v7, "d"

    .line 421
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "angle"

    const-string v6, "0"

    .line 422
    invoke-virtual {v15, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v4, 0x1

    move-wide/from16 v4, v21

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x1

    .line 425
    new-instance v2, Ltw/edu/kmu/act/ARListActivity$6;

    invoke-direct {v2, v0}, Ltw/edu/kmu/act/ARListActivity$6;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    new-instance v8, Ltw/edu/kmu/adapter/ARListViewAdapter;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/ARListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, v0, Ltw/edu/kmu/act/ARListActivity;->isPad:Z

    const v6, 0x7f0a001f

    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const-string v4, "title"

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const-string v4, "pic"

    aput-object v4, v9, v5

    const-string v4, "d"

    aput-object v4, v9, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v8

    move-object v4, v1

    const/4 v10, 0x1

    move v5, v6

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/ARListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v8, v0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 438
    iget-object v2, v0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    check-cast v2, Ltw/edu/kmu/adapter/ARListViewAdapter;

    iget-object v3, v0, Ltw/edu/kmu/act/ARListActivity;->listbg:[I

    invoke-virtual {v2, v3}, Ltw/edu/kmu/adapter/ARListViewAdapter;->setListbg([I)V

    .line 439
    iget-object v2, v0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    check-cast v2, Ltw/edu/kmu/adapter/ARListViewAdapter;

    iget-boolean v3, v0, Ltw/edu/kmu/act/ARListActivity;->isSensorExist:Z

    invoke-virtual {v2, v3}, Ltw/edu/kmu/adapter/ARListViewAdapter;->setSensorExit(Z)V

    .line 440
    iget-object v2, v0, Ltw/edu/kmu/act/ARListActivity;->lv:Landroid/widget/ListView;

    iget-object v3, v0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 442
    iget-object v2, v0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    iget-object v3, v0, Ltw/edu/kmu/act/ARListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3, v1, v10}, Ltw/edu/kmu/facade/GPSFacade;->addToUpdateARList(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;Z)V

    .line 444
    iget-object v1, v0, Ltw/edu/kmu/act/ARListActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Ltw/edu/kmu/act/ARListActivity$7;

    invoke-direct {v2, v0}, Ltw/edu/kmu/act/ARListActivity$7;-><init>(Ltw/edu/kmu/act/ARListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_7
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801d5
        0x7f080108
        0x7f0800d5
    .end array-data
.end method


# virtual methods
.method public checkCamera()V
    .locals 3

    .line 351
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkCamera is start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ltw/edu/kmu/act/ARListActivity;->frontCam:Z

    const-string v1, "android.hardware.camera"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ltw/edu/kmu/act/ARListActivity;->rearCam:Z

    .line 359
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frontCam is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltw/edu/kmu/act/ARListActivity;->frontCam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " and rearCam is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ltw/edu/kmu/act/ARListActivity;->rearCam:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0022

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->queryEnNameAry:[Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->queryNameAry:[Ljava/lang/String;

    :cond_0
    const-string p1, "Data"

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/ARListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->sharedData:Landroid/content/SharedPreferences;

    .line 112
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->bundle:Landroid/os/Bundle;

    .line 116
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f080029

    .line 118
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->lv:Landroid/widget/ListView;

    const-string p1, "sensor"

    .line 120
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 122
    invoke-static {p0}, Ltw/edu/kmu/tool/SystemInfoTool;->chechkSensor(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/ARListActivity;->isSensorExist:Z

    .line 123
    invoke-static {p0}, Ltw/edu/kmu/tool/SystemInfoTool;->isPad(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/ARListActivity;->isPad:Z

    .line 126
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ltw/edu/kmu/facade/GPSFacade;->getInstance(Landroid/content/Context;)Ltw/edu/kmu/facade/GPSFacade;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    .line 127
    iget-object p1, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    invoke-virtual {p1}, Ltw/edu/kmu/facade/GPSFacade;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u7121\u6cd5\u53d6\u5f97GPS\u8cc7\u6599,\u8acb\u78ba\u5b9aGPS\u53ca\u7db2\u8def\u5df2\u958b\u555f"

    const/4 v1, 0x1

    .line 132
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x11

    .line 133
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 134
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->finish()V

    return-void

    .line 144
    :cond_1
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->initFunctionBtn()V

    .line 146
    invoke-direct {p0}, Ltw/edu/kmu/act/ARListActivity;->checkBundle()V

    const p1, 0x7f0801d5

    .line 148
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ARListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Ltw/edu/kmu/act/ARListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 495
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 496
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy:sensorMan.unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 500
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    invoke-virtual {v0}, Ltw/edu/kmu/facade/GPSFacade;->removeUpdates()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 487
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause:sensorMan.unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 489
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    invoke-virtual {v0}, Ltw/edu/kmu/facade/GPSFacade;->removeUpdates()V

    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 477
    sget-object v0, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume sensorMan.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ltw/edu/kmu/act/ARListActivity;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Ltw/edu/kmu/act/ARListActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 479
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Ltw/edu/kmu/facade/GPSFacade;->requestGPSLocationUpdates(JF)V

    .line 480
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->gpsFacade:Ltw/edu/kmu/facade/GPSFacade;

    invoke-virtual {v0, v2, v3, v1}, Ltw/edu/kmu/facade/GPSFacade;->requestNetworkLocationUpdates(JF)V

    .line 481
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
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

    .line 646
    iget-object v0, p0, Ltw/edu/kmu/act/ARListActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 652
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 653
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 654
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 655
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 656
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 657
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 658
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 659
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 660
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 661
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 663
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 669
    sget-object v2, Ltw/edu/kmu/act/ARListActivity;->TAG:Ljava/lang/String;

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
