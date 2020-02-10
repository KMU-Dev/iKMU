.class public Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "IRSTAStuReplyListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IRSTAStuReplyListViewAdapter"


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

    .line 34
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p4, 0x0

    .line 30
    iput-boolean p4, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->isEnglish:Z

    .line 35
    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->data:Ljava/util/List;

    .line 36
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->context:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    iput p3, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->resource:I

    const p2, 0x7f0c008a

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->isEnglish:Z

    const-string p2, "window"

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->display:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 58
    iget-object p3, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 62
    iget-object p2, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;->resource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter;Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$1;)V

    const v0, 0x7f0801c9

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    const v0, 0x7f0801dc

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const v0, 0x7f080202

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    const v0, 0x7f080027

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->ans:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;

    .line 76
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stunam"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stuno"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title2:Landroid/widget/TextView;

    const-string v1, "ansTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "qutype"

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "99"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5206\u6578:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "totalScore"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object v1, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->title3:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ans:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ansDesc"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v1, "2"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->ans:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p3, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->ans:Landroid/widget/ImageView;

    const-string v0, "true"

    const-string v1, "correct"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f070063

    goto :goto_2

    :cond_2
    const p1, 0x7f070062

    :goto_2
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 91
    :cond_3
    iget-object p1, p3, Ltw/edu/kmu/adapter/IRSTAStuReplyListViewAdapter$ViewHolder;->ans:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-object p2
.end method
