.class Ltw/edu/kmu/act/AuthorizationActivity$2;
.super Ljava/lang/Object;
.source "AuthorizationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationActivity;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 281
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$1200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 283
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "title"

    .line 284
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/AuthorizationActivity;->access$1200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$1200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dataMap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "dataMap"

    .line 286
    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/AuthorizationActivity;->access$1200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dataMap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 288
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/AuthorizationActivity;->startActivity(Landroid/content/Intent;)V

    .line 290
    :cond_1
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$2;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->finish()V

    return-void
.end method
