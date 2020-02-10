.class public Ltw/edu/kmu/adapter/EvlClassListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "EvlClassListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EvlClassListViewAdapter"


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
    iput-object p2, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->data:Ljava/util/List;

    .line 29
    iput-object p1, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    iput p3, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getClassBgByClassNo(Ljava/lang/String;)I
    .locals 2

    const-string v0, "1"

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0700d5

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "2"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0700d6

    return p1

    :cond_1
    const-string v0, "3"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0700d7

    return p1

    :cond_2
    const-string v0, "4"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0700d8

    return p1

    :cond_3
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 54
    iget-object p3, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c008a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "en"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 56
    iget-object v0, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/EvlClassListViewAdapter;Ltw/edu/kmu/adapter/EvlClassListViewAdapter$1;)V

    const v1, 0x7f080102

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img1:Landroid/widget/ImageView;

    const v1, 0x7f080103

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const v1, 0x7f0801cb

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    const v1, 0x7f0801cf

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;

    .line 73
    :goto_0
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const v3, 0x7f07014b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, ""

    const-string v4, "seqno"

    .line 79
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v1, "Y"

    const-string v5, "pblYn"

    .line 82
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img1:Landroid/widget/ImageView;

    const v4, 0x7f0700d9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const-string v1, "seqno"

    .line 85
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v4, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img1:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->getClassBgByClassNo(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    const-string v1, "Y"

    const-string v4, "pblYn"

    .line 90
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rmk"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    const-string v5, "englishco"

    goto :goto_2

    :cond_3
    const-string v5, "chineseCo"

    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 94
    :cond_4
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title11:Landroid/widget/TextView;

    if-eqz p3, :cond_5

    const-string v4, "englishco"

    goto :goto_3

    :cond_5
    const-string v4, "chineseCo"

    :goto_3
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_4
    iget-boolean v1, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->isClass:Z

    const/16 v4, 0x8

    const v5, 0x7f070087

    if-eqz v1, :cond_7

    const-string v1, "Y"

    const-string v6, "qfcFilled"

    .line 98
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v3, "\u8ab2\u7a0b\u554f\u5377\u5df2\u7d93\u586b\u5beb\u5b8c\u6210"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 105
    :cond_6
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v5, "\u8ab2\u7a0b\u554f\u5377\u9084\u672a\u586b\u5beb"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_5

    :cond_7
    const-string v1, "0"

    const-string v6, "cntY"

    .line 111
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "0"

    const-string v6, "cntN"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v5, "\u6559\u5b78\u8a55\u91cf\u9084\u672a\u586b\u5beb"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_8
    const-string v1, "0"

    const-string v3, "cntN"

    .line 115
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 117
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6559\u5b78\u8a55\u91cf\u5c1a\u6709"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "cntN"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u4efd\u9084\u672a\u586b\u5beb"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const-string v3, "cntN"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    const v3, 0x7f07009f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    const-string v1, "0"

    const-string v3, "cntN"

    .line 122
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    const-string v3, "\u6559\u5b78\u8a55\u91cf\u5df2\u7d93\u586b\u5beb\u5b8c\u6210"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->img2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_a
    :goto_5
    const-string v1, "Y"

    const-string v3, "netVtlt"

    .line 131
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 133
    iget-object p1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    if-eqz p3, :cond_b

    const-string p3, "It\'s the other questionnaire"

    goto :goto_6

    :cond_b
    const-string p3, "\u672c\u8ab2\u7a0b\u70ba\u5176\u4ed6\u8a55\u91cf"

    :goto_6
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 138
    :cond_c
    iget-object p1, v0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->title12:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-object p2
.end method

.method public isClass()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->isClass:Z

    return v0
.end method

.method public setClass(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter;->isClass:Z

    return-void
.end method
