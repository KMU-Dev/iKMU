.class Ltw/edu/kmu/act/LoadImageService$ScanImage;
.super Landroid/os/AsyncTask;
.source "LoadImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/LoadImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private limitSizeH:I

.field private limitSizeW:I

.field private limitType:I

.field private packageName:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;

.field final synthetic this$0:Ltw/edu/kmu/act/LoadImageService;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/LoadImageService;Landroid/content/res/Resources;Ljava/lang/String;III)V
    .locals 0

    .line 282
    iput-object p1, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->this$0:Ltw/edu/kmu/act/LoadImageService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "ScanImage"

    .line 280
    iput-object p1, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->TAG:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->res:Landroid/content/res/Resources;

    .line 284
    iput-object p3, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->packageName:Ljava/lang/String;

    .line 285
    iput p4, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeW:I

    .line 286
    iput p5, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeH:I

    .line 287
    iput p6, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitType:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/LoadImageService$ScanImage;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 11

    .line 297
    :goto_0
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$700()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$800()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 306
    invoke-static {p1}, Ltw/edu/kmu/act/LoadImageService;->access$202(Z)Z

    .line 307
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1000()Z

    .line 308
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x3ed

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 310
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 311
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 314
    iget-object v3, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8b80\u53d6\u5716\u6a94:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1200()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v3

    iget-object v4, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->res:Landroid/content/res/Resources;

    iget v6, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeW:I

    iget v7, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeH:I

    iget v8, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitType:I

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1200()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v3 .. v9}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromURL(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 319
    :cond_5
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v3

    iget-object v5, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->res:Landroid/content/res/Resources;

    iget-object v6, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->packageName:Ljava/lang/String;

    iget v7, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeW:I

    iget v8, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitSizeH:I

    iget v9, p0, Ltw/edu/kmu/act/LoadImageService$ScanImage;->limitType:I

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1300()Ljava/lang/String;

    move-result-object v10

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_7

    .line 322
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1500()I

    move-result v4

    invoke-static {v2, v4}, Ltw/edu/kmu/resource/ImageResource;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 325
    :cond_6
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 329
    :cond_7
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 330
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1500()I

    move-result v4

    invoke-static {v3, v4}, Ltw/edu/kmu/resource/ImageResource;->toRoundCorner(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 332
    :cond_8
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$900()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1600()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_4
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 338
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 342
    :cond_9
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 343
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1100()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 345
    :cond_a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 346
    invoke-static {}, Ltw/edu/kmu/act/LoadImageService;->access$1700()Z

    const-string p1, "\u53d6\u5716\u5b8c\u6210\u6e96\u5099\u66f4\u65b0"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/LoadImageService$ScanImage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 353
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 292
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
