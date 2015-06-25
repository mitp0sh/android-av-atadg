.class Lde/gdata/mobilesecurity/intents/v;
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
    .line 2514
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/v;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2517
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2518
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/v;->a:Lde/gdata/mobilesecurity/intents/Main;

    const-class v1, Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2519
    return-void
.end method
