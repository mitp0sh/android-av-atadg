.class Lde/gdata/mobilesecurity/activities/debug/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/h;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 362
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/h;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeOfLastPeriodicScan(J)V

    .line 363
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/h;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v1, 0x7f0b019a

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last executed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/debug/h;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getTimeOfLastPeriodicScan()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method
