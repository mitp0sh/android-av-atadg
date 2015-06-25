.class Lde/gdata/mobilesecurity/privacy/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ak;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ak;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/al;->a:Lde/gdata/mobilesecurity/privacy/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/al;->a:Lde/gdata/mobilesecurity/privacy/ak;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ak;->a:Lde/gdata/mobilesecurity/privacy/ag;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ag;->b:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Ljava/lang/String;)V

    .line 771
    return-void
.end method
