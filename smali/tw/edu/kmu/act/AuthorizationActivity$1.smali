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

    .line 107
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 112
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->isNetworkAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationActivity;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$000(Ltw/edu/kmu/act/AuthorizationActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-boolean p1, p1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$000(Ltw/edu/kmu/act/AuthorizationActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iput-boolean v2, p1, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    .line 122
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$100(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$200(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-boolean v3, v3, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "Login"

    goto :goto_0

    :cond_1
    const-string v3, "\u767b\u5165"

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-boolean v3, v3, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "Logout Successful"

    goto :goto_1

    :cond_2
    const-string v3, "\u5df2\u767b\u51fa"

    :goto_1
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 126
    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$400(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isLogin"

    .line 130
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$500(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_2

    .line 137
    :cond_3
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$500(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 145
    :cond_4
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$500(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$602(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity;->access$702(Ltw/edu/kmu/act/AuthorizationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/AuthorizationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 149
    new-instance p1, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;

    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/AuthorizationActivity;Ltw/edu/kmu/act/AuthorizationActivity$1;)V

    .line 150
    new-array v0, v1, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/AuthorizationActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$500(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/AuthorizationActivity;->access$300(Ltw/edu/kmu/act/AuthorizationActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_2
    return-void

    .line 139
    :cond_5
    :goto_3
    iget-object p1, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-object v3, p0, Ltw/edu/kmu/act/AuthorizationActivity$1;->this$0:Ltw/edu/kmu/act/AuthorizationActivity;

    iget-boolean v3, v3, Ltw/edu/kmu/act/AuthorizationActivity;->isEnglish:Z

    if-eqz v3, :cond_6

    const-string v3, "your userName or password can\'t empty"

    goto :goto_4

    :cond_6
    const-string v3, "\u5e33\u865f\u6216\u5bc6\u78bc\u4e0d\u80fd\u7a7a\u767d"

    :goto_4
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 141
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
