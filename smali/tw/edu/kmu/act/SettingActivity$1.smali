.class Ltw/edu/kmu/act/SettingActivity$1;
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

.field final synthetic val$btn:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SettingActivity;Landroid/widget/ToggleButton;)V
    .locals 0

    .line 47
    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity$1;->this$0:Ltw/edu/kmu/act/SettingActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/SettingActivity$1;->val$btn:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$1;->val$btn:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$1;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SettingActivity;->access$000(Ltw/edu/kmu/act/SettingActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$1;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SettingActivity;->access$000(Ltw/edu/kmu/act/SettingActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    .line 60
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$1;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SettingActivity;->access$100(Ltw/edu/kmu/act/SettingActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isEnableGCM"

    .line 61
    iget-object v1, p0, Ltw/edu/kmu/act/SettingActivity$1;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/SettingActivity;->access$000(Ltw/edu/kmu/act/SettingActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-boolean v1, v1, Ltw/edu/kmu/act/MyApplication;->isEnableGCM:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
