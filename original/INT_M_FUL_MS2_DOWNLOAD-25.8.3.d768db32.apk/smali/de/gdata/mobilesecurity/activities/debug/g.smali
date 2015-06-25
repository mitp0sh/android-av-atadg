.class Lde/gdata/mobilesecurity/activities/debug/g;
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
    .line 335
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 339
    :try_start_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    const v1, 0x7f0b0195

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 342
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->a(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getPeriodicScanIntervalDays()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, v0

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->minToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setTimeOfLastPeriodicScan(J)V

    .line 344
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

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

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

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

    .line 347
    new-instance v0, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/ScanAlarmReceiver;->enable()J

    move-result-wide v0

    .line 349
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/g;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Enter a number"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
