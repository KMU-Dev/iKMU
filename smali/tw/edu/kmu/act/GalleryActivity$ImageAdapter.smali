.class Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltw/edu/kmu/act/GalleryActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/GalleryActivity;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 275
    iput-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->imgList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->imgList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$900(Ltw/edu/kmu/act/GalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    return v0

    .line 291
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->imgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 308
    new-instance p2, Ltw/edu/kmu/view/ReflectionImage;

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Ltw/edu/kmu/view/ReflectionImage;-><init>(Landroid/content/Context;)V

    .line 309
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$000(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    const-string v0, "pic"

    .line 310
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 312
    invoke-static {}, Ltw/edu/kmu/act/GalleryActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-eqz p3, :cond_3

    .line 317
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 323
    :cond_0
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/GalleryActivity;->access$1200(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 326
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-boolean v2, v2, Ltw/edu/kmu/act/GalleryActivity;->isPad:Z

    const-wide v3, 0x3fd3333333333333L    # 0.3

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/GalleryActivity;->access$1300(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&w=480&h=360"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ltw/edu/kmu/act/GalleryActivity;->access$402(Ltw/edu/kmu/act/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ltw/edu/kmu/tool/ImageTool;->getBitmapFromStorage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 330
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/GalleryActivity;->access$1400(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/resource/ImageResource;

    move-result-object v5

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-double v8, p3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v0

    double-to-int v8, v8

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getHeight()I

    move-result p3

    int-to-double v9, p3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    double-to-int v9, v9

    const/4 v10, 0x0

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$400(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromURLWithWH(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_0
    move-object v2, p3

    goto/16 :goto_1

    .line 333
    :cond_1
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/GalleryActivity;->access$1300(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/GalleryActivity;->access$1500(Ltw/edu/kmu/act/GalleryActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v6}, Ltw/edu/kmu/act/GalleryActivity;->access$1600(Ltw/edu/kmu/act/GalleryActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ltw/edu/kmu/act/GalleryActivity;->access$402(Ltw/edu/kmu/act/GalleryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ltw/edu/kmu/tool/ImageTool;->getBitmapFromStorage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 336
    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/GalleryActivity;->access$1400(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/resource/ImageResource;

    move-result-object v5

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-double v8, p3

    const-wide v10, 0x3fd999999999999aL    # 0.4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getHeight()I

    move-result p3

    int-to-double v9, p3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    double-to-int v9, v9

    const/4 v10, 0x0

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$400(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromURLWithWH(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto/16 :goto_0

    .line 339
    :cond_2
    :goto_1
    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/GalleryActivity;->access$1200(Ltw/edu/kmu/act/GalleryActivity;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 319
    :cond_3
    :goto_2
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$1100(Ltw/edu/kmu/act/GalleryActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 347
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/GalleryActivity;->access$1100(Ltw/edu/kmu/act/GalleryActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 351
    :cond_5
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-boolean p1, p1, Ltw/edu/kmu/act/GalleryActivity;->isPad:Z

    if-eqz p1, :cond_6

    .line 352
    invoke-virtual {p2, v2}, Ltw/edu/kmu/view/ReflectionImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    new-instance p1, Landroid/widget/Gallery$LayoutParams;

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p3, v2

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object v2, v2, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    invoke-direct {p1, p3, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Ltw/edu/kmu/view/ReflectionImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 355
    :cond_6
    invoke-virtual {p2, v2}, Ltw/edu/kmu/view/ReflectionImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    new-instance p1, Landroid/widget/Gallery$LayoutParams;

    iget-object p3, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object p3, p3, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getWidth()I

    move-result p3

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p3, v2

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$ImageAdapter;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    iget-object v2, v2, Ltw/edu/kmu/act/GalleryActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    invoke-direct {p1, p3, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Ltw/edu/kmu/view/ReflectionImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    :goto_4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/view/ReflectionImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object p2
.end method
