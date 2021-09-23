.class Ltw/edu/kmu/act/MyKMUActivity$9;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 330
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 335
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    if-nez p1, :cond_0

    .line 337
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 338
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 342
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v0, "\u6559\u8077\u54e1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v0, "\u884c\u653f\u4eba\u54e1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    const-string v0, "\u6d3b\u52d5\u5c08\u5340"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 367
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$500(Ltw/edu/kmu/act/MyKMUActivity;)V

    goto :goto_1

    .line 371
    :cond_2
    new-instance p1, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    const/4 v0, 0x1

    .line 372
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 345
    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/WacTeaMainActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 346
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$9;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
