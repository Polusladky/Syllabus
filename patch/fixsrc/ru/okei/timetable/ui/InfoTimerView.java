package ru.okei.timetable.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;

/* Отдельный таймер обратного отсчёта для экранов «следующая пара» и «перед парами». */
public class InfoTimerView extends View {
    private static final int COLUMNS = 34;
    private static final long FRAME_MS = 33;
    private static final int STEPS = 16;
    private float beat;
    private boolean dying;
    private Typeface face;
    private float flash;
    private final Runnable frame;
    private final Handler handler;
    private String info;
    private int ink;
    private final float[] level;
    private final RectF oval;
    private final Paint paint;
    private final Path path;
    private boolean rhythm;
    private boolean running;
    private float spin;
    private final float[] target;
    private final Paint textPaint;
    private String time;
    private final float[] velocity;

    public InfoTimerView(Context context) {
        super(context);
        this.paint = new Paint();
        this.textPaint = new Paint();
        this.handler = new Handler(Looper.getMainLooper());
        this.level = new float[COLUMNS];
        this.target = new float[COLUMNS];
        this.velocity = new float[COLUMNS];
        this.path = new Path();
        this.oval = new RectF();
        this.time = "";
        this.info = "";
        this.ink = -1;
        this.frame = new Runnable() { // from class: ru.okei.timetable.ui.InfoTimerView.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int i = 0;
                boolean z2 = false;
                while (true) {
                    z = true;
                    if (i >= InfoTimerView.COLUMNS) {
                        break;
                    }
                    InfoTimerView.this.velocity[i] = (InfoTimerView.this.velocity[i] + ((InfoTimerView.this.target[i] - InfoTimerView.this.level[i]) * 0.28f)) * 0.74f;
                    float[] fArr = InfoTimerView.this.level;
                    fArr[i] = fArr[i] + InfoTimerView.this.velocity[i];
                    if (InfoTimerView.this.level[i] < 0.0f) {
                        InfoTimerView.this.level[i] = 0.0f;
                        InfoTimerView.this.velocity[i] = 0.0f;
                    } else if (InfoTimerView.this.level[i] > 1.0f) {
                        InfoTimerView.this.level[i] = 1.0f;
                        InfoTimerView.this.velocity[i] = (-InfoTimerView.this.velocity[i]) * 0.3f;
                    }
                    if (InfoTimerView.this.dying) {
                        InfoTimerView.this.target[i] = 0.0f;
                    } else if (InfoTimerView.this.rhythm) {
                        float[] fArr2 = InfoTimerView.this.target;
                        fArr2[i] = fArr2[i] * 0.9f;
                    }
                    if (Math.abs(InfoTimerView.this.velocity[i]) > 0.004f || InfoTimerView.this.level[i] > 0.02f) {
                        z2 = true;
                    }
                    i++;
                }
                InfoTimerView.this.beat *= 0.9f;
                InfoTimerView.this.flash *= 0.86f;
                if (InfoTimerView.this.beat > 0.01f || InfoTimerView.this.flash > 0.01f) {
                    z2 = true;
                }
                if (InfoTimerView.this.rhythm) {
                    InfoTimerView.this.spin += 0.9f;
                    if (InfoTimerView.this.spin > 360.0f) {
                        InfoTimerView.this.spin -= 360.0f;
                    }
                } else {
                    z = z2;
                }
                InfoTimerView.this.invalidate();
                if (z) {
                    InfoTimerView.this.handler.postDelayed(this, InfoTimerView.FRAME_MS);
                } else {
                    InfoTimerView.this.running = false;
                }
            }
        };
        init();
    }

    public InfoTimerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.textPaint = new Paint();
        this.handler = new Handler(Looper.getMainLooper());
        this.level = new float[COLUMNS];
        this.target = new float[COLUMNS];
        this.velocity = new float[COLUMNS];
        this.path = new Path();
        this.oval = new RectF();
        this.time = "";
        this.info = "";
        this.ink = -1;
        this.frame = new Runnable() { // from class: ru.okei.timetable.ui.InfoTimerView.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int i = 0;
                boolean z2 = false;
                while (true) {
                    z = true;
                    if (i >= InfoTimerView.COLUMNS) {
                        break;
                    }
                    InfoTimerView.this.velocity[i] = (InfoTimerView.this.velocity[i] + ((InfoTimerView.this.target[i] - InfoTimerView.this.level[i]) * 0.28f)) * 0.74f;
                    float[] fArr = InfoTimerView.this.level;
                    fArr[i] = fArr[i] + InfoTimerView.this.velocity[i];
                    if (InfoTimerView.this.level[i] < 0.0f) {
                        InfoTimerView.this.level[i] = 0.0f;
                        InfoTimerView.this.velocity[i] = 0.0f;
                    } else if (InfoTimerView.this.level[i] > 1.0f) {
                        InfoTimerView.this.level[i] = 1.0f;
                        InfoTimerView.this.velocity[i] = (-InfoTimerView.this.velocity[i]) * 0.3f;
                    }
                    if (InfoTimerView.this.dying) {
                        InfoTimerView.this.target[i] = 0.0f;
                    } else if (InfoTimerView.this.rhythm) {
                        float[] fArr2 = InfoTimerView.this.target;
                        fArr2[i] = fArr2[i] * 0.9f;
                    }
                    if (Math.abs(InfoTimerView.this.velocity[i]) > 0.004f || InfoTimerView.this.level[i] > 0.02f) {
                        z2 = true;
                    }
                    i++;
                }
                InfoTimerView.this.beat *= 0.9f;
                InfoTimerView.this.flash *= 0.86f;
                if (InfoTimerView.this.beat > 0.01f || InfoTimerView.this.flash > 0.01f) {
                    z2 = true;
                }
                if (InfoTimerView.this.rhythm) {
                    InfoTimerView.this.spin += 0.9f;
                    if (InfoTimerView.this.spin > 360.0f) {
                        InfoTimerView.this.spin -= 360.0f;
                    }
                } else {
                    z = z2;
                }
                InfoTimerView.this.invalidate();
                if (z) {
                    InfoTimerView.this.handler.postDelayed(this, InfoTimerView.FRAME_MS);
                } else {
                    InfoTimerView.this.running = false;
                }
            }
        };
        init();
    }

    private void init() {
        this.paint.setAntiAlias(false);
        this.paint.setDither(false);
        this.textPaint.setAntiAlias(false);
        this.textPaint.setDither(false);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
    }

    public void setInk(int i) {
        this.ink = i;
        invalidate();
    }

    public void configure(String str, String str2, Typeface typeface) {
        if (str == null) {
            str = "";
        }
        this.time = str;
        if (str2 == null) {
            str2 = "";
        }
        this.info = str2;
        this.face = typeface;
        invalidate();
    }

    public void configure(String str, Typeface typeface, float f) {
        configure(str, "", typeface);
    }

    public void setRhythm(boolean z) {
        if (this.rhythm == z) {
            return;
        }
        this.rhythm = z;
        if (!z) {
            for (int i = 0; i < COLUMNS; i++) {
                this.level[i] = 0.0f;
                this.target[i] = 0.0f;
                this.velocity[i] = 0.0f;
            }
        }
        invalidate();
    }

    public void setBands(float[] fArr) {
        int i;
        if (fArr == null || fArr.length == 0) {
            return;
        }
        int length = fArr.length;
        for (int i2 = 0; i2 < COLUMNS; i2++) {
            float fMin = fArr[((i2 * length) / COLUMNS) % length];
            if (i2 < 11) {
                fMin = Math.min(1.0f, fMin * 1.25f);
            }
            this.target[i2] = Math.max(0.14f, Math.min(1.0f, (float) Math.pow(Math.max(0.0f, Math.min(1.0f, fMin)), 0.699999988079071d)));
        }
        int i3 = 0;
        while (true) {
            if (i3 >= COLUMNS) {
                break;
            }
            int i4 = ((i3 + COLUMNS) - 1) % COLUMNS;
            int i5 = i3 + 1;
            int i6 = i5 % COLUMNS;
            float[] fArr2 = this.target;
            fArr2[i3] = Math.max(fArr2[i3], Math.max(fArr2[i4], fArr2[i6]) * 0.94f);
            i3 = i5;
        }
        for (i = 1; i < 17; i++) {
            int i7 = 34 - i;
            float[] fArr3 = this.target;
            float fMax = Math.max(fArr3[i], fArr3[i7]);
            float[] fArr4 = this.target;
            fArr4[i] = fMax;
            fArr4[i7] = fMax;
        }
        this.dying = false;
        wake();
    }

    public void beat(float f) {
        this.beat = Math.max(this.beat, Math.max(0.0f, Math.min(1.0f, f)));
        this.dying = false;
        wake();
    }

    public void flash(float f) {
        this.flash = Math.max(this.flash, Math.max(0.0f, Math.min(1.0f, f)));
        wake();
    }

    public void powerDown() {
        this.dying = true;
        this.rhythm = false;
        wake();
    }

    public void quiet() {
        this.handler.removeCallbacksAndMessages(null);
        this.running = false;
        this.dying = false;
        this.rhythm = false;
        this.beat = 0.0f;
        this.flash = 0.0f;
        for (int i = 0; i < COLUMNS; i++) {
            this.level[i] = 0.0f;
            this.target[i] = 0.0f;
            this.velocity[i] = 0.0f;
        }
        invalidate();
    }

    private void wake() {
        if (!this.running) {
            this.running = true;
            this.handler.postDelayed(this.frame, FRAME_MS);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.handler.removeCallbacksAndMessages(null);
        this.running = false;
        super.onDetachedFromWindow();
    }

    private int dp(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        float f = width;
        float f2 = f / 2.0f;
        float f3 = height;
        float f4 = 0.56f * f3;
        float fMin = Math.min(f * 0.412f, f3 * 0.355f);
        drawColumns(canvas, f2, f4, fMin);
        drawRing(canvas, f2, f4, fMin);
        drawInterior(canvas, f2, f4, fMin);
        drawTicks(canvas, f2, f4, fMin);
        drawTime(canvas, f2, f4, fMin);
        drawInfo(canvas, f2, f4, fMin);
    }

    private void drawColumns(Canvas canvas, float f, float f2, float f3) {
        float f4 = 0.02f;
        if (this.rhythm || this.level[0] > 0.02f || this.dying) {
            float fMax = Math.max(dp(3.6f), 0.025f * f3);
            float fDp = f3 + dp(5.0f);
            this.paint.setStyle(Paint.Style.FILL);
            int i = 0;
            while (i < COLUMNS) {
                float f5 = this.level[i];
                if (f5 > f4 || this.rhythm) {
                    double d = ((((double) i) * 6.283185307179586d) / 34.0d) - 1.5707963267948966d;
                    float fCos = (float) Math.cos(d);
                    float fSin = (float) Math.sin(d);
                    int iMax = Math.max(3, (int) (16.0f * f5 * 1.4f));
                    for (int i2 = 0; i2 < iMax; i2++) {
                        float f6 = (i2 * fMax) + fDp;
                        float f7 = f + (fCos * f6);
                        float f8 = f2 + (f6 * fSin);
                        this.paint.setColor((this.ink & 16777215) | (Math.max(40, 245 - (i2 * 11)) << 24));
                        float f9 = fMax / 2.0f;
                        canvas.drawRect(f7 - f9, f8 - f9, f7 + f9, f8 + f9, this.paint);
                    }
                    if (f5 > 0.45f) {
                        this.paint.setColor((((int) ((Math.min(1.0f, f5 + (this.beat * 0.4f)) * 110.0f) + 50.0f)) << 24) | (this.ink & 16777215));
                        float f10 = (iMax * fMax) + fDp;
                        float f11 = f + (fCos * f10);
                        float f12 = f2 + (fSin * f10);
                        canvas.drawRect(f11 - fMax, f12 - fMax, f11 + fMax, f12 + fMax, this.paint);
                    }
                }
                i++;
                f4 = 0.02f;
            }
        }
    }

    private void drawRing(Canvas canvas, float f, float f2, float f3) {
        float fMax = Math.max(this.beat, this.flash * 0.8f);
        this.paint.setStyle(Paint.Style.STROKE);
        for (int i = 4; i >= 1; i--) {
            this.paint.setStrokeWidth(dp(1.0f) + (dp(1.8f) * i * (0.42f + fMax)));
            this.paint.setColor((Math.max(3, ((int) ((26.0f * fMax) + 12.0f)) - i) << 24) | (this.ink & 16777215));
            canvas.drawCircle(f, f2, (dp(1.5f) * i) + f3, this.paint);
        }
        this.paint.setStrokeWidth(dp(4.4f) + (dp(2.6f) * fMax));
        this.paint.setColor(this.ink);
        canvas.drawCircle(f, f2, f3, this.paint);
        this.paint.setStrokeWidth(dp(1.2f));
        this.paint.setColor(-1711276033);
        canvas.drawCircle(f, f2, dp(3.2f) + f3, this.paint);
        this.paint.setStrokeWidth(dp(1.4f));
        this.paint.setColor(-1);
        canvas.drawCircle(f, f2, f3 - dp(3.0f), this.paint);
        this.paint.setStrokeWidth(dp(1.0f));
        this.paint.setColor(1442840575);
        canvas.drawCircle(f, f2, f3 - dp(5.0f), this.paint);
        this.paint.setColor(687865855);
        canvas.drawCircle(f, f2, f3 - dp(8.0f), this.paint);
        float f4 = f2 - f3;
        this.oval.set(f - f3, f4, f + f3, f2 + f3);
        float f5 = this.rhythm ? this.spin + 168.0f : 160.0f;
        this.paint.setStrokeWidth(dp(3.2f) + (fMax * dp(2.0f)));
        this.paint.setColor(-1);
        canvas.drawArc(this.oval, f5, 26.0f, false, this.paint);
        this.paint.setStrokeWidth(dp(7.0f));
        this.paint.setColor(872415231);
        canvas.drawArc(this.oval, f5 - 4.0f, 34.0f, false, this.paint);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.ink);
        canvas.drawRect(f - dp(2.0f), f4 + dp(2.0f), f + dp(2.0f), f4 + dp(13.0f), this.paint);
    }

    private void drawInterior(Canvas canvas, float f, float f2, float f3) {
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(Theme.DARK_BG);
        canvas.drawCircle(f, f2, f3 - dp(9.0f), this.paint);
    }

    private void drawTicks(Canvas canvas, float f, float f2, float f3) {
        this.paint.setStyle(Paint.Style.FILL);
        for (int i = 0; i < 60; i++) {
            double d = ((((double) i) * 6.283185307179586d) / 60.0d) - 1.5707963267948966d;
            boolean z = i % 5 == 0;
            float fDp = f3 - dp(z ? 15.0f : 9.0f);
            float fDp2 = f3 - dp(4.0f);
            float fDp3 = dp(z ? 2.2f : 1.1f);
            float fCos = (float) Math.cos(d);
            float fSin = (float) Math.sin(d);
            this.paint.setColor((Math.min(255, (z ? 255 : 150) + ((int) (Math.max(this.beat, this.flash) * 30.0f))) << 24) | (this.ink & 16777215));
            this.path.reset();
            float f4 = (fCos * fDp) + f;
            float f5 = fSin * fDp3;
            float f6 = f2 + (fDp * fSin);
            float f7 = fDp3 * fCos;
            this.path.moveTo(f4 - f5, f6 + f7);
            float f8 = (fCos * fDp2) + f;
            float f9 = f2 + (fSin * fDp2);
            this.path.lineTo(f8 - f5, f9 + f7);
            this.path.lineTo(f8 + f5, f9 - f7);
            this.path.lineTo(f4 + f5, f6 - f7);
            this.path.close();
            canvas.drawPath(this.path, this.paint);
        }
    }

    private void drawTime(Canvas canvas, float f, float f2, float f3) {
        if (this.face == null || this.time.isEmpty()) {
            return;
        }
        this.textPaint.setTypeface(this.face);
        this.textPaint.setTextSize(0.56f * f3);
        this.textPaint.setColor(this.ink);
        Paint.FontMetrics fontMetrics = this.textPaint.getFontMetrics();
        canvas.drawText(this.time, f, (f2 - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f)) - (f3 * 0.02f), this.textPaint);
    }

    private void drawInfo(Canvas canvas, float f, float f2, float f3) {
        if (this.face == null || this.info.isEmpty()) {
            return;
        }
        this.textPaint.setTypeface(this.face);
        this.textPaint.setTextSize(Math.max(dp(10.0f), 0.088f * f3));
        this.textPaint.setColor(-654311425);
        canvas.drawText(this.info, f, f2 + (f3 * 0.3f), this.textPaint);
    }
}
