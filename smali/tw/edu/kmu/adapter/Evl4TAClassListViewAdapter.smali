.class public Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "Evl4TAClassListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Evl4TAClassListViewAdapter"


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
    iput-object p2, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->data:Ljava/util/List;

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput p3, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 52
    iget-object p3, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    iget-object p3, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->resource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$1;)V

    const v0, 0x7f0801d9

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v0, 0x7f0801dd

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;

    .line 70
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const-string v1, "title11"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p3, p3, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v0, "title12"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/Evl4TAClassListViewAdapter;->isClass:Z

    return-void
.end method
