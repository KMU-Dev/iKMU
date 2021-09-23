.class Ltw/edu/kmu/act/WacTeaFun3Activity$5;
.super Ljava/lang/Object;
.source "WacTeaFun3Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun3Activity;->showTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun3Activity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun3Activity$5;->this$0:Ltw/edu/kmu/act/WacTeaFun3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
