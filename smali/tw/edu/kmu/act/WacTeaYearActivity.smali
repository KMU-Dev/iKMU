.class public Ltw/edu/kmu/act/WacTeaYearActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaYearActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/WacTeaYearActivity$GetServerData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaYearActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Landroid/widget/SimpleAdapter;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

.field private currentIdx:I

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private isGCMEvent:Z

.field private lv:Landroid/widget/ListView;

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

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 41
    iput v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->CLOSE_PROGRESSBAR:I

    const-string v0, "teacher"

    .line 49
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->isGCMEvent:Z

    .line 156
    new-instance v0, Ltw/edu/kmu/act/WacTeaYearActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/WacTeaYearActivity$4;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/WacTeaYearActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/WacTeaYearActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/WacTeaYearActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/WacTeaYearActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->showList()V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/WacTeaYearActivity;)Landroid/widget/ListView;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/WacTeaYearActivity;)I
    .locals 0

    .line 34
    iget p0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->currentIdx:I

    return p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/WacTeaYearActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/WacTeaYearActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/WacTeaYearActivity;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initBtnFunction()V
    .locals 4

    const v0, 0x7f080040

    .line 84
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaYearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 87
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f070158

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v1, ""

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 96
    new-instance v1, Ltw/edu/kmu/act/WacTeaYearActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaYearActivity$1;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTypeBtn()V
    .locals 2

    const v0, 0x7f080117

    .line 116
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaYearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080052

    .line 119
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaYearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn1:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn1:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->isEnglish:Z

    const-string v1, "\u6559\u5e2b\u8a55\u91cf"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08005c

    .line 121
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/WacTeaYearActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn2:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn2:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->isEnglish:Z

    const-string v1, "\u8ab2\u7a0b\u8a55\u91cf"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn2:Landroid/widget/Button;

    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WacTeaYearActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaYearActivity$2;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->btn2:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/WacTeaYearActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaYearActivity$3;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;)V

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

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 296
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 297
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->url:Ljava/lang/String;

    const-string v4, "post"

    invoke-virtual {v2, v3, v1, v4}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    sget-object v3, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 303
    :goto_0
    sget-object v1, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 8

    .line 193
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 198
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title11"

    .line 199
    iget-boolean v4, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->isEnglish:Z

    const-string v4, "semName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "title12"

    const-string v4, ""

    .line 200
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a0057

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "title11"

    aput-object v3, v6, v0

    const-string v0, "title12"

    const/4 v3, 0x1

    aput-object v0, v6, v3

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 216
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaYearActivity$5;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaYearActivity$5;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f0801cb
        0x7f0801cf
    .end array-data
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0051

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    sget-object v0, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/WacTeaYearActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f08011b

    .line 60
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaYearActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->lv:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->url:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->bundle:Landroid/os/Bundle;

    .line 65
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 67
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaYearActivity;->initTypeBtn()V

    .line 71
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaYearActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "idx"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->currentIdx:I

    .line 77
    sget-object p1, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 346
    sget-object v0, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 348
    new-instance v0, Ltw/edu/kmu/act/WacTeaYearActivity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/WacTeaYearActivity$GetServerData;-><init>(Ltw/edu/kmu/act/WacTeaYearActivity;Ltw/edu/kmu/act/WacTeaYearActivity$1;)V

    const/4 v1, 0x1

    .line 349
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/WacTeaYearActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

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

    .line 313
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaYearActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 319
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 320
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 321
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 322
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 323
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 326
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 328
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 330
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    sget-object v2, Ltw/edu/kmu/act/WacTeaYearActivity;->TAG:Ljava/lang/String;

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
