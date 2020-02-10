.class public Ltw/edu/kmu/adapter/ARListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "ARListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARListViewAdapter"


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

.field private isSensorExist:Z

.field private listbg:[I

.field private noImageID:I

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

    .line 38
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const/4 p4, 0x2

    .line 32
    new-array p4, p4, [I

    fill-array-data p4, :array_0

    iput-object p4, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->listbg:[I

    const p4, 0x7f07013b

    .line 33
    iput p4, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->noImageID:I

    const/4 p4, 0x1

    .line 34
    iput-boolean p4, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->isSensorExist:Z

    .line 39
    iput-object p2, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->data:Ljava/util/List;

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->context:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 42
    iput p3, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->resource:I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 119
    iget-object v0, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070153

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, p2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, p2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getNoImageID()I
    .locals 1

    .line 97
    iget v0, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->noImageID:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 56
    iget-object p3, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string p3, "title"

    .line 57
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "d"

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->resource:I

    invoke-virtual {p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;

    invoke-direct {v2, p0, v1}, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/ARListViewAdapter;Ltw/edu/kmu/adapter/ARListViewAdapter$1;)V

    const v1, 0x7f0801c7

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0800ca

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    const v1, 0x7f0800fe

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->listbg:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;

    .line 70
    iget-object v3, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f070153

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :goto_0
    iget-boolean v1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->isSensorExist:Z

    if-nez v1, :cond_1

    .line 76
    iget-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :cond_1
    iget-object v1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p3, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p3, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p3, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->distance:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p3, "angle"

    .line 85
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 86
    iget-object p1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    double-to-float p3, v0

    invoke-virtual {p0, p1, p3}, Ltw/edu/kmu/adapter/ARListViewAdapter;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 87
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object p1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p1, v2, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-object p2
.end method

.method public isSensorExist()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->isSensorExist:Z

    return v0
.end method

.method public setListbg([I)V
    .locals 0

    .line 104
    iput-object p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->listbg:[I

    return-void
.end method

.method public setNoImageID(I)V
    .locals 0

    .line 100
    iput p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->noImageID:I

    return-void
.end method

.method public setSensorExit(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter;->isSensorExist:Z

    return-void
.end method
