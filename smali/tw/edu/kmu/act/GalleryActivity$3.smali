.class Ltw/edu/kmu/act/GalleryActivity$3;
.super Landroid/os/Handler;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$3;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 251
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$3;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 252
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3f0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ReloadImage"

    const-string v1, "\u901a\u77e5\u8cc7\u6599\u5df2\u7d93\u8b8a\u66f4"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$3;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$800(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$3;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$600(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
