.class public Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "WacTAremitListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTAremitListViewAdapter"


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
    iput-object p2, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->data:Ljava/util/List;

    .line 30
    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput p3, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 55
    iget-object p3, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    iget-object p3, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$1;)V

    const v1, 0x7f0801d9

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v1, 0x7f0801dd

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const v1, 0x7f0801eb

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const v1, 0x7f080211

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;

    :goto_0
    const v1, 0x7f080175

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f070198

    .line 78
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f070199

    .line 81
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 84
    :goto_1
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const-string v1, "payDate"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v1, "amount"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const-string v1, "content"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const-string v0, "account"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/WacTAremitListViewAdapter;->isClass:Z

    return-void
.end method
