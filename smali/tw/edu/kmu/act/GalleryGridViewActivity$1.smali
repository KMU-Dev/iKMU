.class Ltw/edu/kmu/act/GalleryGridViewActivity$1;
.super Ljava/lang/Object;
.source "GalleryGridViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryGridViewActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryGridViewActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 108
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    const-class v1, Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "serverDataList"

    .line 109
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->access$100(Ltw/edu/kmu/act/GalleryGridViewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "isLoadedIndex"

    .line 110
    iget-object v1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->access$200(Ltw/edu/kmu/act/GalleryGridViewActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isLoadedIndex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$1;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->finish()V

    return-void
.end method
