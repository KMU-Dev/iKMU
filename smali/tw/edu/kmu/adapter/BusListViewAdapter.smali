.class public Ltw/edu/kmu/adapter/BusListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "BusListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BusListViewAdapter"


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

.field private from:[Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private limitSizeH:I

.field private limitSizeW:I

.field private limitType:I

.field private listTextColor:[I

.field private listTextPadding:[I

.field private listbg:[I

.field private noImageID:I

.field private packageName:Ljava/lang/String;

.field private parentHandler:Landroid/os/Handler;

.field private res:Landroid/content/res/Resources;

.field private resource:I

.field private to:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;II)V
    .locals 11
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
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p8

    move/from16 v10, p9

    .line 48
    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/BusListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V
    .locals 12
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
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 53
    invoke-direct/range {v0 .. v11}, Ltw/edu/kmu/adapter/BusListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 3
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
            "[I",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "III",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f05001e

    aput v2, v0, v1

    iput-object v0, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listTextColor:[I

    const/4 v0, 0x4

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listTextPadding:[I

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listbg:[I

    const v0, 0x7f07013b

    .line 43
    iput v0, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->noImageID:I

    .line 60
    iput-object p2, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->data:Ljava/util/List;

    .line 61
    iput-object p5, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->to:[I

    .line 62
    iput-object p4, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->from:[Ljava/lang/String;

    .line 63
    iput-object p6, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->res:Landroid/content/res/Resources;

    .line 64
    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->context:Landroid/content/Context;

    .line 65
    iput-object p7, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->packageName:Ljava/lang/String;

    .line 66
    iput p8, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->limitSizeW:I

    .line 67
    iput p9, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->limitSizeH:I

    .line 68
    iput p10, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->limitType:I

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 70
    iput p3, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->resource:I

    .line 72
    iput-object p11, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->parentHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getNoImageID()I
    .locals 1

    .line 149
    iget v0, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->noImageID:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 89
    iget-object p3, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p3, "time"

    .line 90
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 93
    iget-object p2, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->resource:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/BusListViewAdapter;Ltw/edu/kmu/adapter/BusListViewAdapter$1;)V

    const v0, 0x7f0801d5

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0800aa

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const v0, 0x7f080109

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    const v0, 0x7f08010a

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;

    .line 102
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 105
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 106
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v2, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 113
    :goto_0
    iget-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5230\u7ad9\u6642\u9593:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "0"

    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const-string v0, "\u9032\u7ad9\u4e2d"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    const-string p1, "1"

    .line 119
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "2"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "3"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 120
    :cond_4
    :goto_2
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const-string v0, "\u5373\u5c07\u5230\u7ad9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->context:Landroid/content/Context;

    const v0, 0x7f01000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 122
    iget-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0x64

    invoke-static {v3, v2, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    const-string p1, "0"

    .line 129
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 130
    iget-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->context:Landroid/content/Context;

    const v0, 0x7f01000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 131
    iget-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    const-string p1, "0"

    .line 135
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 136
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->context:Landroid/content/Context;

    const p3, 0x7f010010

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 138
    iget-object p3, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    :cond_6
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView01:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 142
    iget-object p1, v1, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->imageView02:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-object p2
.end method

.method public setListTextColor([I)V
    .locals 0

    .line 160
    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listTextColor:[I

    return-void
.end method

.method public setListTextPadding([I)V
    .locals 0

    .line 164
    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listTextPadding:[I

    return-void
.end method

.method public setListbg([I)V
    .locals 0

    .line 156
    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->listbg:[I

    return-void
.end method

.method public setNoImageID(I)V
    .locals 0

    .line 152
    iput p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter;->noImageID:I

    return-void
.end method
