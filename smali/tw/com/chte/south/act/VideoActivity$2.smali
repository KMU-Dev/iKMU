.class Ltw/com/chte/south/act/VideoActivity$2;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/chte/south/act/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/chte/south/act/VideoActivity;


# direct methods
.method constructor <init>(Ltw/com/chte/south/act/VideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/chte/south/act/VideoActivity$2;->this$0:Ltw/com/chte/south/act/VideoActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 57
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/com/chte/south/act/VideoActivity$2;->this$0:Ltw/com/chte/south/act/VideoActivity;

    invoke-virtual {v0}, Ltw/com/chte/south/act/VideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/com/chte/south/act/VideoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 59
    iget-object v2, p0, Ltw/com/chte/south/act/VideoActivity$2;->this$0:Ltw/com/chte/south/act/VideoActivity;

    invoke-static {v2}, Ltw/com/chte/south/act/VideoActivity;->access$0(Ltw/com/chte/south/act/VideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fullscreen"

    const-string v2, "true"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Ltw/com/chte/south/act/VideoActivity$2;->this$0:Ltw/com/chte/south/act/VideoActivity;

    invoke-virtual {v0, p1}, Ltw/com/chte/south/act/VideoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
