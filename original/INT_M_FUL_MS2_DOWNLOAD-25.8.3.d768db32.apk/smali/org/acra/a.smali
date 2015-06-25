.class final Lorg/acra/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    const-string v0, "acra.disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acra.enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    # invokes: Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    invoke-static {p1}, Lorg/acra/ACRA;->access$000(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 202
    :goto_0
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/acra/ErrorReporter;->setEnabled(Z)V

    .line 204
    :cond_1
    return-void

    .line 201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
