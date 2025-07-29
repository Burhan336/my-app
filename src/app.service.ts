import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  getHealth() {
    return {
      status: 'ok',
      time: new Date().toISOString()
    };
  }

  testPost(body: any) {
    return {
      message: 'POST received',
      data: body,
      time: new Date().toISOString()
    };
  }
}
