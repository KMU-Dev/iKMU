.class public Ltw/edu/kmu/act/EvlClassActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "EvlClassActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/EvlClassActivity$GetServerData;,
        Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlClassActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private adapter:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private bundle:Landroid/os/Bundle;

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
    iput v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->CLOSE_PROGRESSBAR:I

    const-string v0, "teacher"

    .line 49
    iput-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->isGCMEvent:Z

    .line 159
    new-instance v0, Ltw/edu/kmu/act/EvlClassActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/EvlClassActivity$4;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn1:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn2:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Ltw/edu/kmu/act/EvlClassActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/EvlClassActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlClassActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/EvlClassActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Ltw/edu/kmu/act/EvlClassActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/adapter/EvlClassListViewAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->adapter:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/EvlClassActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlClassActivity;->showList()V

    return-void
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/widget/ListView;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Bundle;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 34
    iget-object p0, p0, Ltw/edu/kmu/act/EvlClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method private initBtnFunction()V
    .locals 4

    const v0, 0x7f080040

    .line 86
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 89
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f070158

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string v1, ""

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 98
    new-instance v1, Ltw/edu/kmu/act/EvlClassActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlClassActivity$1;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTypeBtn()V
    .locals 2

    const v0, 0x7f080052

    .line 118
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn1:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn1:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "Instructor"

    goto :goto_0

    :cond_0
    const-string v1, "\u6559\u5e2b"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08005c

    .line 120
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/EvlClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn2:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn2:Landroid/widget/Button;

    iget-boolean v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    const-string v1, "Course"

    goto :goto_1

    :cond_1
    const-string v1, "\u8ab2\u7a0b"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn1:Landroid/widget/Button;

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn2:Landroid/widget/Button;

    const-string v1, "#00FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn1:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlClassActivity$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlClassActivity$2;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->btn2:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/EvlClassActivity$3;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlClassActivity$3;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

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

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->readSharedPreferencesData()Ljava/util/ArrayList;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->isNetworkAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v0

    .line 430
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 431
    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v4, v4, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "post"

    invoke-virtual {v2, v3, v1, v4}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :try_start_1
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    sget-object v3, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    const-string v4, "result"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
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

    .line 437
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v2
.end method

.method private showList()V
    .locals 9

    .line 196
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 201
    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "title11"

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_1

    const-string v5, "eclassKindName"

    goto :goto_1

    :cond_1
    const-string v5, "classKindName"

    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_2

    const-string v5, "englishco"

    goto :goto_2

    :cond_2
    const-string v5, "chineseCo"

    :goto_2
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "0"

    const-string v4, "cntY"

    .line 203
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "0"

    const-string v4, "cntN"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "title12"

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_3

    const-string v5, "esmName"

    goto :goto_3

    :cond_3
    const-string v5, "smName"

    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_4

    const-string v5, "enorYnName"

    goto :goto_4

    :cond_4
    const-string v5, "norYnName"

    :goto_4
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\u6559\u5b78\u8a55\u91cf\u9084\u672a\u586b\u5beb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_5
    const-string v3, "title12"

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_6

    const-string v5, "esmName"

    goto :goto_5

    :cond_6
    const-string v5, "smName"

    :goto_5
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Ltw/edu/kmu/act/EvlClassActivity;->isEnglish:Z

    if-eqz v5, :cond_7

    const-string v5, "enorYnName"

    goto :goto_6

    :cond_7
    const-string v5, "norYnName"

    :goto_6
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\u6559\u5b78\u8a55\u91cf\u5c1a\u6709"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cntN"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4efd\u9084\u672a\u586b\u5beb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 216
    :cond_8
    new-instance v1, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    iget-object v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a0050

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const-string v3, "title11"

    aput-object v3, v6, v0

    const-string v3, "title12"

    const/4 v8, 0x1

    aput-object v3, v6, v8

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->adapter:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    .line 223
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity;->adapter:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->lv:Landroid/widget/ListView;

    new-instance v2, Ltw/edu/kmu/act/EvlClassActivity$5;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/EvlClassActivity$5;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 273
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 275
    sget-object v1, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle seqno is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "seqno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle teafno is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "teafno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_9
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "seqno"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 281
    new-instance v1, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;-><init>(Ltw/edu/kmu/act/EvlClassActivity;Ltw/edu/kmu/act/EvlClassActivity$1;)V

    .line 282
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 287
    iget-object v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "seqno"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seqno"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->isGCMEvent:Z

    if-eqz v4, :cond_a

    .line 291
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 292
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    :cond_b
    const-string v2, "teafno"

    .line 295
    iget-object v3, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "teafno"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, ""

    .line 296
    iget-object v4, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "teafno"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "class"

    goto :goto_9

    :cond_c
    const-string v3, "teacher"

    :goto_9
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/EvlClassActivity;->startActivity(Landroid/content/Intent;)V

    .line 298
    iput-boolean v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->isGCMEvent:Z

    :cond_d
    return-void

    :cond_e
    :goto_a
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
    sget-object v0, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Data"

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Ltw/edu/kmu/act/EvlClassActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->sharedData:Landroid/content/SharedPreferences;

    const p1, 0x7f08011b

    .line 59
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlClassActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->lv:Landroid/widget/ListView;

    .line 60
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->url:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    .line 64
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "isGCMEvent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->isGCMEvent:Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 70
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlClassActivity;->initTypeBtn()V

    .line 72
    invoke-direct {p0}, Ltw/edu/kmu/act/EvlClassActivity;->initBtnFunction()V

    .line 74
    invoke-virtual {p0}, Ltw/edu/kmu/act/EvlClassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlClassActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    sget-object p1, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 480
    sget-object v0, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 482
    new-instance v0, Ltw/edu/kmu/act/EvlClassActivity$GetServerData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/EvlClassActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlClassActivity;Ltw/edu/kmu/act/EvlClassActivity$1;)V

    const/4 v1, 0x1

    .line 483
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/EvlClassActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 485
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

    .line 447
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity;->sharedData:Landroid/content/SharedPreferences;

    sget-object v1, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 453
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    .line 454
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 455
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 456
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 457
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 458
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 459
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 460
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 462
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 464
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 470
    sget-object v2, Ltw/edu/kmu/act/EvlClassActivity;->TAG:Ljava/lang/String;

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
