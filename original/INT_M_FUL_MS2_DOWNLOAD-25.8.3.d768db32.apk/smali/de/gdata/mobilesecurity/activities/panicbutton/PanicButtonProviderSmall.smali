.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static final ACTION_PANIC_CLICKED:Ljava/lang/String; = "de.gdata.mobilesecurity.activities.panicbutton_red.CLICKED_"

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 13

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Panic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getPanicProfileByWidgetId(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_7

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PanicA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 127
    const-string v4, ""

    .line 129
    const/4 v1, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x0

    .line 134
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v4

    move v4, v0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    iget v0, v6, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 139
    :goto_1
    iget v0, v6, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v8, v0

    .line 140
    :goto_2
    iget v0, v6, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    move v9, v0

    .line 141
    :goto_3
    iget v0, v6, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    if-nez v0, :cond_6

    const/4 v10, 0x1

    .line 143
    :goto_4
    if-eqz v7, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    :cond_0
    if-eqz v10, :cond_8

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 156
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 157
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    .line 162
    :goto_5
    if-eqz v8, :cond_1

    .line 164
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getHeader()Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v4, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getEmailForLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lde/gdata/mobilesecurity/util/EmailClient;->sendInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    if-eqz v9, :cond_2

    .line 177
    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "PanicButton"

    .line 180
    new-instance v2, Lde/gdata/mobilesecurity/services/GpsSender;

    sget v3, Lde/gdata/mobilesecurity/services/GpsSender;->SEND_TYPE_PANIC_BUTTON:I

    invoke-direct {v2, p1, v1, v3}, Lde/gdata/mobilesecurity/services/GpsSender;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/services/GpsSender;->start()V

    :cond_2
    move v4, v10

    move v3, v9

    move v2, v8

    move v1, v7

    move-object v5, v0

    .line 183
    goto/16 :goto_0

    :cond_3
    move v7, v1

    .line 138
    goto/16 :goto_1

    :cond_4
    move v8, v2

    .line 139
    goto/16 :goto_2

    :cond_5
    move v9, v3

    .line 140
    goto/16 :goto_3

    :cond_6
    move v10, v4

    .line 141
    goto/16 :goto_4

    .line 158
    :catch_0
    move-exception v0

    move-object v0, v11

    goto :goto_5

    .line 185
    :cond_7
    return-void

    :cond_8
    move-object v0, v5

    goto :goto_5
.end method

.method static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 7

    .prologue
    const v6, 0x7f0b0235

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030062

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 58
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getPanicProfileByWidgetId(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const v2, 0x7f0b0237

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 63
    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getDrawableForProfile(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I

    move-result v0

    .line 64
    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 67
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 70
    const/4 v0, 0x2

    invoke-static {p0, v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->drawableToMediumBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 71
    const v0, 0x7f0b0236

    const v2, 0x7f020165

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 74
    :cond_0
    invoke-virtual {p1, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static updateAppWidgets(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 190
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 191
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 195
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 197
    invoke-static {p0, v1, v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 43
    new-instance v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 44
    array-length v1, p2

    if-lez v1, :cond_0

    .line 45
    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getPanicProfileByWidgetId(I)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->deletePanicProfile(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    .line 83
    const-string v0, "onReceive all deleted "

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 87
    :goto_0
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "de.gdata.mobilesecurity.activities.panicbutton_red.CLICKED_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-boolean v0, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetDialogActivity;->WIDGET_THREAD_IS_RUNNING:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lde/gdata/mobilesecurity/activities/panicbutton/q;

    invoke-direct {v1, p0, p1}, Lde/gdata/mobilesecurity/activities/panicbutton/q;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    return-void

    .line 85
    :cond_1
    const-string v0, "not deleted"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->updateAppWidgets(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 32
    if-eqz p3, :cond_0

    .line 33
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    .line 34
    invoke-static {p1, p2, v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
