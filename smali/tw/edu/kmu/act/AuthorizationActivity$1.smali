.class Ltw/edu/kmu/act/AuthorizationActivity$1;
.super Ljava/lang/Object;
.source "AuthorizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 109
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 114
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->isNetworkAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationActivity;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$000(Ltw/edu/kmu/act/AuthorizationActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 122
    new-instance p1, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;

    iget-object v2, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p1, v2, v0}, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;Ltw/edu/kmu/act/AuthorizationActivity$1;)V

    .line 123
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity$LogOut;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/AuthorizationActivity;->access$200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ltw/edu/kmu/act/AuthorizationActivity;->access$402(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ltw/edu/kmu/act/AuthorizationActivity;->access$502(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 139
    new-instance p1, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p1, v3, v0}, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;Ltw/edu/kmu/act/AuthorizationActivity$1;)V

    .line 140
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 143
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void

    .line 129
    :cond_3
    :goto_1
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v0, :cond_4

    const-string v0, "your userName or password can\'t empty"

    goto :goto_2

    :cond_4
    const-string v0, "\u5e33\u865f\u6216\u5bc6\u78bc\u4e0d\u80fd\u7a7a\u767d"

    :goto_2
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 130
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 131
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
