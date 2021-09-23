.class Ltw/edu/kmu/act/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SettingActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SettingActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/SettingActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gallery Cache"

    goto :goto_0

    :cond_0
    const-string v0, "\u7dda\u4e0a\u85dd\u5eca\u5feb\u53d6"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/SettingActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Clear Cache"

    goto :goto_1

    :cond_1
    const-string v0, "\u662f\u5426\u6e05\u9664\u5feb\u53d6?"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/SettingActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cancel"

    goto :goto_2

    :cond_2
    const-string v0, "\u53d6\u6d88"

    :goto_2
    new-instance v1, Ltw/edu/kmu/act/SettingActivity$3$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SettingActivity$3$2;-><init>(Ltw/edu/kmu/act/SettingActivity$3;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/SettingActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Yes"

    goto :goto_3

    :cond_3
    const-string v0, "\u6e05\u9664"

    :goto_3
    new-instance v1, Ltw/edu/kmu/act/SettingActivity$3$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/SettingActivity$3$1;-><init>(Ltw/edu/kmu/act/SettingActivity$3;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
