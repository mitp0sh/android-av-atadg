.class Lde/gdata/mobilesecurity/intents/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/ProfileSelector;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/ProfileSelector;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/br;->a:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/br;->a:Lde/gdata/mobilesecurity/intents/ProfileSelector;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/ProfileSelector;->finish()V

    .line 159
    return-void
.end method
