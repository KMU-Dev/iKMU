.class public Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "TBLReplyRecordListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLReplyRecordListViewAdapter"


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
    iput-object p2, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->data:Ljava/util/List;

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput p3, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 55
    iget-object p3, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 57
    iget-object v0, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->resource:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$1;)V

    const v2, 0x7f0801d9

    .line 63
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v2, 0x7f0801dd

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const v2, 0x7f0801eb

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const v2, 0x7f0801f0

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    const v2, 0x7f080211

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;

    :goto_0
    const v2, 0x7f080175

    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 77
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const p1, 0x7f070198

    .line 79
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f070199

    .line 82
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 85
    :goto_1
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    const-string p3, "teafEnam"

    :goto_2
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string p3, "teafNam"

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string p3, "typeDesc"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title21:Landroid/widget/TextView;

    const-string p3, "ansTime"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title22:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f97\u5206"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scoreDesc"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, v1, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter$ViewHolder;->title31:Landroid/widget/TextView;

    const-string p3, "description"

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/TBLReplyRecordListViewAdapter;->isClass:Z

    return-void
.end method
