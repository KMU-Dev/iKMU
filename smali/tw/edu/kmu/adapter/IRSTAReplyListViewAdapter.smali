.class public Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "IRSTAReplyListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSTAReplyListViewAdapter"


# instance fields
.field private alertView:Landroid/widget/LinearLayout;

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

.field protected display:Landroid/view/Display;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEnglish:Z

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

    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p4, 0x0

    .line 31
    iput-boolean p4, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->isEnglish:Z

    .line 36
    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->data:Ljava/util/List;

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->context:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 39
    iput p3, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->resource:I

    const p2, 0x7f0c0088

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->isEnglish:Z

    const-string p2, "window"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->display:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 58
    iget-object p3, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;->resource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter;Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$1;)V

    const v0, 0x7f0801d7

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const v0, 0x7f0801ea

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const v0, 0x7f080210

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;

    .line 75
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const-string v1, "askTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const-string v1, "userDesc"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Q:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "askDesc"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "replied"

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "true"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const p3, -0xffff01

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p3, Ltw/edu/kmu/adapter/IRSTAReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method
