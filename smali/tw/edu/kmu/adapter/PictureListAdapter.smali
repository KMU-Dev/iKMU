.class public Ltw/edu/kmu/adapter/PictureListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PictureListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureListAdapter"


# instance fields
.field private Display:Landroid/view/Display;

.field private IsPad:Z

.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private asyncImageFileLoader:Ltw/edu/kmu/tool/AsyncImageFileLoader;

.field private loadingIcon:Landroid/graphics/Bitmap;

.field mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private picHeight:I

.field private picWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;Ljava/util/List;ZLandroid/view/Display;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/GridView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/view/Display;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->mGridView:Landroid/widget/GridView;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->mGridView:Landroid/widget/GridView;

    .line 41
    iput-object p3, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Items:Ljava/util/List;

    .line 42
    iput-object p4, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Paths:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070186

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->loadingIcon:Landroid/graphics/Bitmap;

    .line 44
    new-instance p2, Ltw/edu/kmu/tool/AsyncImageFileLoader;

    invoke-direct {p2}, Ltw/edu/kmu/tool/AsyncImageFileLoader;-><init>()V

    iput-object p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->asyncImageFileLoader:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    .line 45
    iput-boolean p5, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->IsPad:Z

    .line 46
    iput-object p6, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Display:Landroid/view/Display;

    .line 47
    iget-boolean p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->IsPad:Z

    if-eqz p2, :cond_0

    const/16 p1, 0x1e0

    .line 48
    iput p1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picWidth:I

    const/16 p1, 0x168

    .line 49
    iput p1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picHeight:I

    goto :goto_0

    :cond_0
    const/high16 p2, 0x43700000    # 240.0f

    .line 51
    invoke-static {p1, p2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picWidth:I

    const/high16 p2, 0x43340000    # 180.0f

    .line 52
    invoke-static {p1, p2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0a006d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/PictureListAdapter;Ltw/edu/kmu/adapter/PictureListAdapter$1;)V

    const v0, 0x7f080003

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;

    .line 91
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    iget-object v2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 95
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    iget-object v1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Paths:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->asyncImageFileLoader:Ltw/edu/kmu/tool/AsyncImageFileLoader;

    iget-object v1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->Paths:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picWidth:I

    iget v2, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->picHeight:I

    new-instance v3, Ltw/edu/kmu/adapter/PictureListAdapter$1;

    invoke-direct {v3, p0}, Ltw/edu/kmu/adapter/PictureListAdapter$1;-><init>(Ltw/edu/kmu/adapter/PictureListAdapter;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Ltw/edu/kmu/tool/AsyncImageFileLoader;->loadBitmap(Ljava/lang/String;IILtw/edu/kmu/tool/AsyncImageFileLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p3, p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 115
    :cond_1
    iget-object p1, p3, Ltw/edu/kmu/adapter/PictureListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p3, p0, Ltw/edu/kmu/adapter/PictureListAdapter;->loadingIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-object p2
.end method
