.class public Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "WacTAmidAlertListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTAmidAlertListViewAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private isClass:Z

.field private resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 28
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 29
    iput-object p2, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->data:Ljava/util/List;

    .line 30
    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput p3, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 66
    iget-object p3, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 68
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->resource:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$1;)V

    const v2, 0x7f0801d9

    .line 74
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v2, 0x7f0801dd

    .line 75
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const v2, 0x7f0801eb

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const v2, 0x7f0801f0

    .line 77
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    const v2, 0x7f0801f5

    .line 78
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title23:Landroid/widget/TextView;

    const v2, 0x7f0801fa

    .line 79
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title24:Landroid/widget/TextView;

    const v2, 0x7f0801ff

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title25:Landroid/widget/TextView;

    const v2, 0x7f080211

    .line 81
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const v2, 0x7f080215

    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title32:Landroid/widget/TextView;

    const v2, 0x7f080219

    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title33:Landroid/widget/TextView;

    const v2, 0x7f08021a

    .line 84
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title34:Landroid/widget/TextView;

    const v2, 0x7f08021b

    .line 85
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title35:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;

    :goto_0
    const v2, 0x7f080175

    .line 93
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 94
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f070198

    .line 96
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f070199

    .line 99
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 102
    :goto_1
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const-string v2, "stuInfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v2, "ngp"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    const-string v2, "Total"

    goto :goto_2

    :cond_2
    const-string v2, "\u7e3d\u4fee\u5b78\u5206"

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const-string v2, "May fail"

    goto :goto_3

    :cond_3
    const-string v2, "\u53ef\u80fd\u88ab\u7576"

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title23:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const-string v2, "R"

    goto :goto_4

    :cond_4
    const-string v2, "\u7d05\u71c8"

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title24:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    const-string v2, "Y"

    goto :goto_5

    :cond_5
    const-string v2, "\u9ec3\u71c8"

    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title25:Landroid/widget/TextView;

    if-eqz p3, :cond_6

    const-string p3, "G"

    goto :goto_6

    :cond_6
    const-string p3, "\u7da0\u71c8"

    :goto_6
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const-string p3, "sucrd"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title32:Landroid/widget/TextView;

    const-string p3, "rycrd"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title33:Landroid/widget/TextView;

    const-string p3, "cntRed"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title34:Landroid/widget/TextView;

    const-string p3, "cntYellow"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, v1, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter$ViewHolder;->title35:Landroid/widget/TextView;

    const-string p3, "cntGreen"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/WacTAmidAlertListViewAdapter;->isClass:Z

    return-void
.end method
