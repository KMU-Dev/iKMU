.class public Ltw/edu/kmu/act/AboutSchoolLevel2Activity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "AboutSchoolLevel2Activity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutSchoolLevel2Activity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/AboutSchoolLevel2Activity;)Landroid/widget/ListView;
    .locals 0

    .line 14
    iget-object p0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method private showList()V
    .locals 8

    .line 46
    iget-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v0, v0, Ltw/edu/kmu/act/MyApplication;->detailList:Ljava/util/ArrayList;

    iput-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->serverDataList:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->serverDataList:Ljava/util/ArrayList;

    const v4, 0x7f0a001c

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    iget-object v6, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->currentLocale:Ljava/lang/String;

    const-string v7, "en"

    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ename"

    goto :goto_0

    :cond_1
    const-string v6, "name"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v1, [I

    const v1, 0x7f0801d5

    aput v1, v6, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->adapter:Landroid/widget/SimpleAdapter;

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity$1;-><init>(Ltw/edu/kmu/act/AboutSchoolLevel2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a001d

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    sget-object v0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080125

    .line 28
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->lv:Landroid/widget/ListView;

    .line 30
    invoke-virtual {p0}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->bundle:Landroid/os/Bundle;

    .line 32
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->currentLocale:Ljava/lang/String;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->bundle:Landroid/os/Bundle;

    const-string v0, "ename"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->bundle:Landroid/os/Bundle;

    const-string v0, "name"

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->showList()V

    .line 36
    sget-object p1, Ltw/edu/kmu/act/AboutSchoolLevel2Activity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
