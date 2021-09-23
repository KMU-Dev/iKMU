.class Ltw/edu/kmu/act/GalleryZoomImageActivity$5;
.super Landroid/os/Handler;
.source "GalleryZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryZoomImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryZoomImageActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 348
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    const-string v1, "\u7db2\u8def\u901f\u5ea6\u904e\u6162"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryZoomImageActivity;->access$400(Ltw/edu/kmu/act/GalleryZoomImageActivity;)Ltw/edu/kmu/view/ProgressWheel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltw/edu/kmu/view/ProgressWheel;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryZoomImageActivity$5;->this$0:Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080055

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u7247\u50b3\u8f38\u4e2d\u65b7"

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7167\u7247\u50b3\u8f38\u4e2d\u65b7\uff0c\u8acb\u78ba\u8a8d\u7db2\u8def\u6b63\u5e38\u5f8c\u91cd\u65b0\u9ede\u9078\u5716\u7247"

    .line 359
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u78ba\u5b9a"

    new-instance v2, Ltw/edu/kmu/act/GalleryZoomImageActivity$5$1;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/GalleryZoomImageActivity$5$1;-><init>(Ltw/edu/kmu/act/GalleryZoomImageActivity$5;)V

    .line 360
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 379
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
