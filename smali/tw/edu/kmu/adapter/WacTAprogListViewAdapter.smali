.class public Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "WacTAprogListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WacTAprogListViewAdapter"


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

.field private timeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 29
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 26
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    .line 30
    iput-object p2, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->data:Ljava/util/List;

    .line 31
    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    iput p3, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->resource:I

    .line 34
    invoke-virtual {p0}, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->setTimeMap()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 56
    iget-object p3, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    iget-object p3, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$1;)V

    const v1, 0x7f0801d7

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const v1, 0x7f0801ea

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const v1, 0x7f080210

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;

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

    .line 89
    :goto_1
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    iget-object v1, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v2, "time"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const-string v1, "chineseco"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, v0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    const-string v0, "extInfo"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->isClass:Z

    return-void
.end method

.method public setTimeMap()V
    .locals 3

    .line 99
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "\u7b2c1\u7bc0\n08:10\n~\n09:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "2"

    const-string v2, "\u7b2c2\u7bc0\n09:10\n~\n10:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "3"

    const-string v2, "\u7b2c3\u7bc0\n10:10\n~\n11:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "4"

    const-string v2, "\u7b2c4\u7bc0\n11:10\n~\n12:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "5"

    const-string v2, "\u7b2c5\u7bc0\n13:10\n~\n14:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "6"

    const-string v2, "\u7b2c6\u7bc0\n14:10\n~\n15:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "7"

    const-string v2, "\u7b2c7\u7bc0\n15:10\n~\n16:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "8"

    const-string v2, "\u7b2c8\u7bc0\n16:10\n~\n17:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "9"

    const-string v2, "\u7b2c9\u7bc0\n17:10\n~\n18:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "A"

    const-string v2, "\u7b2cA\u7bc0\n18:10\n~\n19:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "B"

    const-string v2, "\u7b2cB\u7bc0\n19:10\n~\n20:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "C"

    const-string v2, "\u7b2cC\u7bc0\n20:10\n~\n21:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Ltw/edu/kmu/adapter/WacTAprogListViewAdapter;->timeMap:Ljava/util/HashMap;

    const-string v1, "D"

    const-string v2, "\u7b2cD\u7bc0\n21:10\n~\n22:00"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
