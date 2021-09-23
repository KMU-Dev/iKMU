.class Ltw/edu/kmu/act/AuthorizationSeatActivity$1;
.super Ljava/lang/Object;
.source "AuthorizationSeatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationSeatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 100
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->isNetworkAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$000(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$000(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iput-boolean v2, p1, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    .line 110
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$100(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v3, v3, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Login"

    goto :goto_0

    :cond_1
    const-string v3, "\u767b\u5165"

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$200(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v3, v3, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Logout Successful"

    goto :goto_1

    :cond_2
    const-string v3, "\u5df2\u767b\u51fa"

    :goto_1
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 115
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$400(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 118
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_2

    .line 122
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$400(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 130
    :cond_4
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$400(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$502(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$602(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationSeatActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 134
    new-instance p1, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;Ltw/edu/kmu/act/AuthorizationSeatActivity$1;)V

    .line 135
    new-array v0, v1, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$400(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->access$300(Ltw/edu/kmu/act/AuthorizationSeatActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_2
    return-void

    .line 124
    :cond_5
    :goto_3
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    iget-object v3, v3, Ltw/edu/kmu/act/AuthorizationSeatActivity;->currentLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Your userName or password can\'t empty"

    goto :goto_4

    :cond_6
    const-string v3, "\u5e33\u865f\u6216\u5bc6\u78bc\u4e0d\u80fd\u7a7a\u767d"

    :goto_4
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 126
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
