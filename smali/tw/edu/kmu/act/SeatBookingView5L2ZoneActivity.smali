.class public Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "SeatBookingView5L2ZoneActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView5L2ZoneActivity"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private lv:Landroid/widget/ListView;

.field private lv_adapter:Landroid/widget/SimpleAdapter;

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

    .line 15
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;)Landroid/widget/ListView;
    .locals 0

    .line 15
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;)Landroid/os/Bundle;
    .locals 0

    .line 15
    iget-object p0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method private showList()V
    .locals 8

    .line 52
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "serverDataList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 62
    iget-object v4, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->bundle:Landroid/os/Bundle;

    const-string v5, "locationname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "locationname"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "zonename"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "zonename"

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "zonename"

    const-string v6, "zonename"

    .line 68
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v4, 0x7f0a00c8

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string v2, "zonename"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    new-array v7, v1, [I

    const v1, 0x7f0801d7

    aput v1, v7, v6

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv_adapter:Landroid/widget/SimpleAdapter;

    .line 82
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv_adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity$1;-><init>(Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00c7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    sget-object v0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->bundle:Landroid/os/Bundle;

    .line 36
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->bundle:Landroid/os/Bundle;

    const-string v0, "locationname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f080125

    .line 38
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->lv:Landroid/widget/ListView;

    .line 40
    invoke-direct {p0}, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->showList()V

    .line 42
    sget-object p1, Ltw/edu/kmu/act/SeatBookingView5L2ZoneActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
