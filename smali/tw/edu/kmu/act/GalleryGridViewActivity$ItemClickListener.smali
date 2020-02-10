.class public Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "GalleryGridViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/GalleryGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;


# direct methods
.method public constructor <init>(Ltw/edu/kmu/act/GalleryGridViewActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 79
    invoke-static {}, Ltw/edu/kmu/act/GalleryGridViewActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    const-class p4, Ltw/edu/kmu/act/GalleryZoomImageActivity;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "serverDataList"

    .line 82
    iget-object p4, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-static {p4}, Ltw/edu/kmu/act/GalleryGridViewActivity;->access$100(Ltw/edu/kmu/act/GalleryGridViewActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "isLoadedIndex"

    .line 83
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object p2, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Ltw/edu/kmu/act/GalleryGridViewActivity$ItemClickListener;->this$0:Ltw/edu/kmu/act/GalleryGridViewActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/GalleryGridViewActivity;->finish()V

    return-void
.end method
