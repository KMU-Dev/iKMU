.class public Ltw/edu/kmu/act/WacTeaMainActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "WacTeaMainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTeaMainActivity"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private bundle:Landroid/os/Bundle;

.field private funAry:[Ljava/lang/String;

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
    .locals 3

    .line 14
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x6

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6559\u5e2b\u6210\u9577\u500b\u4eba\u8a18\u9304"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u5c0e\u751f\u671f\u4e2d\u9810\u8b66\u72c0\u614b"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\u6559\u5e2b\u4e0a\u8ab2\u6642\u9593\u8868"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\u6388\u8ab2\u6642\u6578\u67e5\u8a62"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\u500b\u4eba\u532f\u6b3e\u8cc7\u6599\u67e5\u8a62"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "\u5176\u4ed6\u529f\u80fd..."

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->funAry:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/WacTeaMainActivity;)[Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->funAry:[Ljava/lang/String;

    return-object p0
.end method

.method private showList()V
    .locals 8

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->serverDataList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :goto_0
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->funAry:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "name"

    .line 60
    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->funAry:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->serverDataList:Ljava/util/ArrayList;

    const v5, 0x7f0a001c

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string v7, "name"

    aput-object v7, v6, v0

    new-array v7, v2, [I

    const v2, 0x7f0801d5

    aput v2, v7, v0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 72
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/WacTeaMainActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaMainActivity$1;-><init>(Ltw/edu/kmu/act/WacTeaMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

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

    .line 28
    sget-object v0, Ltw/edu/kmu/act/WacTeaMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->bundle:Landroid/os/Bundle;

    .line 34
    invoke-virtual {p0}, Ltw/edu/kmu/act/WacTeaMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->display:Landroid/view/Display;

    const-string p1, "\u6821\u52d9\u7cfb\u7d71\u67e5\u8a62"

    .line 36
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 38
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaMainActivity;->lv:Landroid/widget/ListView;

    .line 40
    invoke-direct {p0}, Ltw/edu/kmu/act/WacTeaMainActivity;->showList()V

    .line 44
    sget-object p1, Ltw/edu/kmu/act/WacTeaMainActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
