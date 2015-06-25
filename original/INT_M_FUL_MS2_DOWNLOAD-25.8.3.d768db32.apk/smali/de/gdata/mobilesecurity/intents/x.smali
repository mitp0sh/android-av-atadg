.class Lde/gdata/mobilesecurity/intents/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 2608
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/x;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 2611
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2612
    return-void
.end method
