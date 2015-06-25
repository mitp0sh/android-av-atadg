.class Lde/gdata/mobilesecurity/intents/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ai;->a:Lde/gdata/mobilesecurity/intents/Main$SubscriptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 1002
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1003
    return-void
.end method
