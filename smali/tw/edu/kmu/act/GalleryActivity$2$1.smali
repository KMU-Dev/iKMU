.class Ltw/edu/kmu/act/GalleryActivity$2$1;
.super Ljava/lang/Thread;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/GalleryActivity$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/GalleryActivity$2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/GalleryActivity$2;)V
    .locals 0

    .line 176
    iput-object p1, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    new-instance v1, Ltw/edu/kmu/listener/PlaySongListener;

    iget-object v2, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v2, v2, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/GalleryActivity;->access$500(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v3, v3, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/GalleryActivity;->access$400(Ltw/edu/kmu/act/GalleryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltw/edu/kmu/listener/PlaySongListener;-><init>(Landroid/widget/Button;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Ltw/edu/kmu/act/GalleryActivity;->access$302(Ltw/edu/kmu/act/GalleryActivity;Ltw/edu/kmu/listener/PlaySongListener;)Ltw/edu/kmu/listener/PlaySongListener;

    .line 180
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Ltw/edu/kmu/listener/PlaySongListener;->setButtonPlayImage(I)V

    .line 181
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Ltw/edu/kmu/listener/PlaySongListener;->setButtonPauseImage(I)V

    .line 183
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$500(Ltw/edu/kmu/act/GalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v1, v1, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/GalleryActivity;->access$300(Ltw/edu/kmu/act/GalleryActivity;)Ltw/edu/kmu/listener/PlaySongListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Ltw/edu/kmu/act/GalleryActivity$2$1;->this$1:Ltw/edu/kmu/act/GalleryActivity$2;

    iget-object v0, v0, Ltw/edu/kmu/act/GalleryActivity$2;->this$0:Ltw/edu/kmu/act/GalleryActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/GalleryActivity;->access$700(Ltw/edu/kmu/act/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
