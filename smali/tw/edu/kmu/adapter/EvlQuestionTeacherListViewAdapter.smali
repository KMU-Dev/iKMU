.class public Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "EvlQuestionTeacherListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlQuestionTeacherListViewAdapter"


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
    iput-object p2, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->data:Ljava/util/List;

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput p3, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 45
    iget-object p3, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0088

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 47
    iget-object v0, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 51
    iget-object p2, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter;Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$1;)V

    const v1, 0x7f0801d5

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;

    :goto_0
    const-string v1, "canEvl"

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uff0a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p3, "teafenam"

    goto :goto_1

    :cond_1
    const-string p3, "teacherName"

    :goto_1
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    const-string p3, "teafenam"

    goto :goto_2

    :cond_3
    const-string p3, "teacherName"

    :goto_2
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    :goto_3
    iget-object p3, v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "true"

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 74
    :cond_4
    iget-object p1, v0, Ltw/edu/kmu/adapter/EvlQuestionTeacherListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const p3, -0x777778

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    return-object p2
.end method
