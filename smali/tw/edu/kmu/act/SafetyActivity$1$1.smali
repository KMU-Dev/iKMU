.class Ltw/edu/kmu/act/SafetyActivity$1$1;
.super Ljava/lang/Object;
.source "SafetyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SafetyActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/SafetyActivity$1;

.field final synthetic val$phoneNumber:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SafetyActivity$1;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 118
    iput-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1$1;->this$1:Ltw/edu/kmu/act/SafetyActivity$1;

    iput-object p2, p0, Ltw/edu/kmu/act/SafetyActivity$1$1;->val$phoneNumber:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltw/edu/kmu/act/SafetyActivity;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " phoneNumber"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltw/edu/kmu/act/SafetyActivity$1$1;->val$phoneNumber:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1$1;->val$phoneNumber:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 124
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    iget-object p1, p0, Ltw/edu/kmu/act/SafetyActivity$1$1;->this$1:Ltw/edu/kmu/act/SafetyActivity$1;

    iget-object p1, p1, Ltw/edu/kmu/act/SafetyActivity$1;->this$0:Ltw/edu/kmu/act/SafetyActivity;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SafetyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
