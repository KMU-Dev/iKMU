.class public Ltw/edu/kmu/adapter/TBLTpListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "TBLTpListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLTpListViewAdapter"


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

    .line 27
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 28
    iput-object p2, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->data:Ljava/util/List;

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput p3, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 57
    iget-object p3, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c008a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 59
    iget-object v0, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 63
    iget-object p2, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->resource:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/TBLTpListViewAdapter;Ltw/edu/kmu/adapter/TBLTpListViewAdapter$1;)V

    const v2, 0x7f0801cb

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v2, 0x7f0801cf

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const v2, 0x7f0801dd

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const v2, 0x7f0801e2

    .line 68
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    const v2, 0x7f080203

    .line 69
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const v2, 0x7f08020f

    .line 70
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title41:Landroid/widget/TextView;

    const v2, 0x7f080124

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->ly04:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;

    :goto_0
    const v2, 0x7f080168

    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 81
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f070198

    .line 83
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f070199

    .line 86
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 89
    :goto_1
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    const-string p3, "teafenam"

    :goto_2
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string p3, "teafnam"

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string p3, "qutype"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const-string p3, "ansTime"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const-string v2, "description"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "ansStatus"

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 96
    iget-object v0, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->title41:Landroid/widget/TextView;

    const-string v2, "\u4e2d\u9014\u96e2\u958b\u88ab\u5c01\u9396"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v1, Ltw/edu/kmu/adapter/TBLTpListViewAdapter$ViewHolder;->ly04:Landroid/widget/LinearLayout;

    const-string v1, "9"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p3, 0x0

    :cond_3
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/TBLTpListViewAdapter;->isClass:Z

    return-void
.end method
