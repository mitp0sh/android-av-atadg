.class Lde/gdata/mobilesecurity/intents/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/UssdFilter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/UssdFilter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/cf;->b:Lde/gdata/mobilesecurity/intents/UssdFilter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/cf;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cf;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/cf;->b:Lde/gdata/mobilesecurity/intents/UssdFilter;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/intents/UssdFilter;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
