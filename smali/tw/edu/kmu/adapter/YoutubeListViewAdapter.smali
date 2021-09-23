.class public Ltw/edu/kmu/adapter/YoutubeListViewAdapter;
.super Landroid/widget/SimpleAdapter;
.source "YoutubeListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private URL_IMAGE:Ljava/lang/String;

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

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private limitSizeH:I

.field private limitSizeW:I

.field private limitType:I

.field private noImageID:I

.field private packageName:Ljava/lang/String;

.field private parentHandler:Landroid/os/Handler;

.field private res:Landroid/content/res/Resources;

.field private resource:I

.field private to:[I


# direct methods
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

    .line 46
    invoke-direct/range {v0 .. v10}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

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

    .line 51
    invoke-direct/range {v0 .. v11}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 1
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

    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const v0, 0x7f07013b

    .line 40
    iput v0, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->noImageID:I

    .line 118
    new-instance v0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;-><init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;)V

    iput-object v0, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->handler:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->data:Ljava/util/List;

    .line 59
    iput-object p5, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->to:[I

    .line 60
    iput-object p4, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->from:[Ljava/lang/String;

    .line 61
    iput-object p6, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->res:Landroid/content/res/Resources;

    .line 62
    iput-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->context:Landroid/content/Context;

    .line 63
    iput-object p7, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->packageName:Ljava/lang/String;

    .line 64
    iput p8, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->limitSizeW:I

    .line 65
    iput p9, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->limitSizeH:I

    .line 66
    iput p10, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->limitType:I

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 68
    iput p3, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->resource:I

    const p1, 0x7f0c001c

    .line 69
    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->URL_IMAGE:Ljava/lang/String;

    .line 70
    iput-object p11, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->parentHandler:Landroid/os/Handler;

    .line 73
    iget-object p1, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->handler:Landroid/os/Handler;

    invoke-static {p1}, Ltw/edu/kmu/act/LoadImageService;->setHandler(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 89
    iget-object p3, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 92
    iget-object p2, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Ltw/edu/kmu/adapter/YoutubeListViewAdapter;->resource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/YoutubeListViewAdapter;Ltw/edu/kmu/adapter/YoutubeListViewAdapter$1;)V

    const v0, 0x7f0801d5

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0801aa

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->speaker:Landroid/widget/TextView;

    const v0, 0x7f080108

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;

    .line 103
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->speaker:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speaker"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "imageLink"

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\^"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 109
    aget-object p1, p1, v1

    .line 110
    invoke-static {v0, p1}, Ltw/edu/kmu/act/LoadImageService;->getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 111
    iget-object p3, p3, Ltw/edu/kmu/adapter/YoutubeListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
