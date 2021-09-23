.class Ltw/edu/kmu/act/IRSActivity$30;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->parseMsg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;

.field final synthetic val$ansTopic:Ljava/lang/String;

.field final synthetic val$questionId:Ljava/lang/String;

.field final synthetic val$questionType:Ljava/lang/String;

.field final synthetic val$subQuList:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2137
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/IRSActivity$30;->val$subQuList:Lorg/json/JSONArray;

    iput-object p3, p0, Ltw/edu/kmu/act/IRSActivity$30;->val$questionType:Ljava/lang/String;

    iput-object p4, p0, Ltw/edu/kmu/act/IRSActivity$30;->val$ansTopic:Ljava/lang/String;

    iput-object p5, p0, Ltw/edu/kmu/act/IRSActivity$30;->val$questionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2141
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Submit"

    goto :goto_0

    :cond_0
    const-string v0, "\u8a66\u5377\u78ba\u5b9a\u9001\u51fa?"

    .line 2142
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_1

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$30$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$30$2;-><init>(Ltw/edu/kmu/act/IRSActivity$30;)V

    .line 2143
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$30;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_2

    const-string v0, "Cancel"

    goto :goto_2

    :cond_2
    const-string v0, "\u53d6\u6d88"

    :goto_2
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$30$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$30$1;-><init>(Ltw/edu/kmu/act/IRSActivity$30;)V

    .line 2248
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2254
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
