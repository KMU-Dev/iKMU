.class Ltw/edu/kmu/act/SettingActivity$3$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SettingActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/SettingActivity$3;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SettingActivity$3;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltw/edu/kmu/act/SettingActivity$3$1;->this$1:Ltw/edu/kmu/act/SettingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 95
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$3$1;->this$1:Ltw/edu/kmu/act/SettingActivity$3;

    iget-object p1, p1, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SettingActivity;->access$200(Ltw/edu/kmu/act/SettingActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$3$1;->this$1:Ltw/edu/kmu/act/SettingActivity$3;

    iget-object p1, p1, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SettingActivity;->deleteDirectory(Ljava/io/File;)Z

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/SettingActivity$3$1;->this$1:Ltw/edu/kmu/act/SettingActivity$3;

    iget-object p1, p1, Ltw/edu/kmu/act/SettingActivity$3;->this$0:Ltw/edu/kmu/act/SettingActivity;

    const-string p2, "\u5df2\u6e05\u9664\u5feb\u53d6"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
